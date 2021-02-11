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
        Lcom/miui/home/launcher/Launcher$CheckedPrepairUserPersentAnimationOperation;,
        Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;,
        Lcom/miui/home/launcher/Launcher$PerformLaunchAction;,
        Lcom/miui/home/launcher/Launcher$SearchBarObserver;,
        Lcom/miui/home/launcher/Launcher$DualClockObserver;,
        Lcom/miui/home/launcher/Launcher$LocaleConfiguration;,
        Lcom/miui/home/launcher/Launcher$IconContainer;,
        Lcom/miui/home/launcher/Launcher$_lancet;
    }
.end annotation


# static fields
.field private static final MIUI_HOME_SPLASH_PATH:Ljava/lang/String;

.field private static sConfigurationChanged:Z

.field private static sEnteredSceneScreen:Z

.field private static final sIsClipTransitionDevice:Z

.field private static sIsDefaultThemeApplied:Z

.field private static sPrefShowIconShadow:Z


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

.field private mBackCoverChanged:Z

.field private mBackHomeAnimationStop:Ljava/lang/Runnable;

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

.field private mDeleteCellScreenMessageHandler:Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

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

.field private mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

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

.field private mInstallPresetAppDialog:Landroid/app/ProgressDialog;

.field private mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

.field private mIsAppLocating:Z

.field private mIsAppWidgetHostStartedListening:Z

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

.field private mOverviewBackground:Lcom/miui/home/recents/views/OverviewBackground;

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

.field private mSystemAnimationObserver:Landroid/database/ContentObserver;

.field protected mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

.field private mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

.field private mTmpPos:[I

.field private mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

.field private mToken:Landroid/os/Binder;

.field private mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

.field private mUninstallController:Lcom/miui/home/launcher/uninstall/UninstallController;

.field mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

.field private mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUserPersentAnimationPrepairedId:J

.field private mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

.field mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

.field private mVoiceServiceObserver:Landroid/database/ContentObserver;

.field private mWaitingForMarketDetail:Z

.field private mWaitingForResult:Z

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

    .line 1030
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mione"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsClipTransitionDevice:Z

    .line 5282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 5283
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 5282
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
    .locals 11

    .line 746
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseActivity;-><init>()V

    .line 393
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    .line 423
    new-instance v1, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 456
    new-instance v1, Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 458
    sget-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v1, 0x0

    .line 460
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    .line 465
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 473
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 474
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 475
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    const-wide/16 v2, -0x1

    .line 476
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    .line 477
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 479
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    .line 481
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    .line 483
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 485
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    const/4 v4, 0x1

    .line 486
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 487
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    const/4 v5, 0x7

    .line 488
    iput v5, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 496
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 501
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    .line 502
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    .line 503
    new-instance v5, Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-direct {v5}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    .line 504
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    .line 505
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    .line 506
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    .line 513
    new-instance v5, Lcom/miui/home/launcher/common/ConflictsManager;

    invoke-direct {v5}, Lcom/miui/home/launcher/common/ConflictsManager;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    const-wide/16 v5, 0x0

    .line 515
    iput-wide v5, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    .line 516
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    .line 517
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    .line 520
    new-instance v5, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    invoke-direct {v5, p0, v1}, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mLongClickInBackgroundMessageHandler:Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    const/4 v5, 0x2

    .line 529
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    .line 532
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    .line 545
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 547
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    .line 549
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 555
    new-instance v6, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    invoke-direct {v6}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mContactsColorizedPortraitController:Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    .line 566
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    .line 567
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 569
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    .line 571
    new-instance v6, Lcom/miui/home/launcher/Launcher$1;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/Launcher$1;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    .line 730
    new-instance v6, Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/LauncherLifecycleLog;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    .line 734
    new-instance v6, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-direct {v6}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    .line 750
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 751
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 1346
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 1351
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 1491
    new-instance v6, Lcom/miui/home/launcher/Launcher$4;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/Launcher$4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1543
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1904
    new-instance v6, Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f7d70a4    # 0.99f

    const/high16 v10, 0x3e800000    # 0.25f

    invoke-direct {v6, v9, v10, v8, v7}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 1905
    new-instance v6, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v10, 0x3ea3d70a    # 0.32f

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 2422
    new-instance v6, Lcom/miui/home/launcher/-$$Lambda$dlEK9FIt3oJvGIMFWRtgMiH1pPA;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/-$$Lambda$dlEK9FIt3oJvGIMFWRtgMiH1pPA;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    .line 3196
    new-instance v6, Lcom/miui/home/launcher/Launcher$19;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/miui/home/launcher/Launcher$19;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    .line 3219
    new-instance v6, Lcom/miui/home/launcher/Launcher$20;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/miui/home/launcher/Launcher$20;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    .line 3226
    new-instance v6, Lcom/miui/home/launcher/Launcher$21;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/miui/home/launcher/Launcher$21;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    .line 3243
    new-instance v6, Lcom/miui/home/launcher/Launcher$22;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/miui/home/launcher/Launcher$22;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    .line 3250
    new-instance v6, Lcom/miui/home/launcher/Launcher$23;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/miui/home/launcher/Launcher$23;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    .line 3258
    new-instance v6, Lcom/miui/home/launcher/Launcher$24;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/miui/home/launcher/Launcher$24;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    .line 3268
    new-instance v6, Lcom/miui/home/launcher/Launcher$25;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/miui/home/launcher/Launcher$25;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    .line 3281
    new-instance v6, Lcom/miui/home/launcher/Launcher$26;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/miui/home/launcher/Launcher$26;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    .line 3299
    new-instance v6, Lcom/miui/home/launcher/Launcher$27;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/miui/home/launcher/Launcher$27;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    .line 3307
    new-instance v6, Lcom/miui/home/launcher/Launcher$28;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/miui/home/launcher/Launcher$28;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    .line 3317
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    .line 3319
    new-instance v4, Lcom/miui/home/launcher/Launcher$29;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/miui/home/launcher/Launcher$29;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    .line 3336
    new-instance v4, Lcom/miui/home/launcher/Launcher$30;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/miui/home/launcher/Launcher$30;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    .line 3354
    new-instance v4, Lcom/miui/home/launcher/Launcher$31;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/miui/home/launcher/Launcher$31;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    .line 3361
    new-instance v4, Lcom/miui/home/launcher/Launcher$32;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/miui/home/launcher/Launcher$32;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    .line 3372
    new-instance v4, Lcom/miui/home/launcher/Launcher$33;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/miui/home/launcher/Launcher$33;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    .line 3380
    new-instance v4, Lcom/miui/home/launcher/Launcher$34;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/miui/home/launcher/Launcher$34;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    .line 3405
    new-instance v4, Lcom/miui/home/launcher/Launcher$35;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/miui/home/launcher/Launcher$35;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    .line 3423
    new-instance v4, Lcom/miui/home/launcher/Launcher$36;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/miui/home/launcher/Launcher$36;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    .line 3431
    new-instance v4, Lcom/miui/home/launcher/Launcher$37;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/miui/home/launcher/Launcher$37;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    .line 3438
    new-instance v4, Lcom/miui/home/launcher/Launcher$38;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/miui/home/launcher/Launcher$38;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    .line 3698
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    .line 3833
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    .line 3834
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    const-string v4, ""

    .line 4055
    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    .line 4273
    new-instance v4, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    .line 4449
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    .line 5106
    new-instance v4, Lcom/miui/home/launcher/Launcher$51;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/Launcher$51;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    .line 5515
    new-instance v4, Lcom/miui/home/launcher/-$$Lambda$Launcher$d23BzljNAG9RRNPZ3h_GIc338b4;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$d23BzljNAG9RRNPZ3h_GIc338b4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mReverseComparator:Ljava/util/Comparator;

    .line 5665
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    .line 5666
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 6230
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mUserPersentAnimationPrepairedId:J

    .line 6270
    new-instance v2, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDeleteCellScreenMessageHandler:Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

    .line 6911
    new-instance v2, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 7383
    new-instance v2, Lcom/miui/home/launcher/Launcher$71;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$71;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    .line 7409
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    .line 7616
    new-instance v2, Lcom/miui/home/launcher/Launcher$74;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$74;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    .line 7725
    new-instance v2, Lcom/miui/home/launcher/Launcher$75;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$75;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    .line 7823
    new-instance v2, Lcom/miui/home/launcher/Launcher$76;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$76;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    .line 7833
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    .line 7856
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    .line 7857
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    .line 7862
    new-instance v2, Lcom/miui/home/launcher/Launcher$FsCallback;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$FsCallback;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    .line 7969
    new-instance v2, Lcom/miui/home/launcher/Launcher$78;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$78;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    const/high16 v2, -0x40800000    # -1.0f

    .line 8084
    iput v2, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    .line 8130
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    .line 8277
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    const/4 v0, -0x1

    .line 8428
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    .line 8571
    new-instance v0, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModuleMessageHandler:Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;

    .line 8584
    new-instance v0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRecentMessageHandler:Lcom/miui/home/launcher/Launcher$RecentMessageHandler;

    .line 747
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;-><init>(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherCallbacks(Lcom/miui/home/launcher/LauncherCallbacks;)Z

    return-void
.end method

.method private abortBackAnimationOnChange()V
    .locals 1

    const/4 v0, 0x1

    .line 6882
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 6883
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    if-eqz v0, :cond_0

    .line 6884
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->cancelIconBackAnimation()V

    :cond_0
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    const-string v0, "input_method"

    .line 1583
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1584
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$003(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$004(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Launcher;)Ljava/util/ArrayList;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/miui/home/launcher/Launcher;Landroid/view/View;FF)V
    .locals 0

    .line 340
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Launcher;->changeViewByFsGestureState(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$10100(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->disconnectFsGuestureService()V

    return-void
.end method

.method static synthetic access$10300(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    return p0
.end method

.method static synthetic access$10302(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/miui/home/launcher/Launcher;)Landroid/content/ServiceConnection;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 340
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    return p0
.end method

.method static synthetic access$10502(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 340
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    return p1
.end method

.method static synthetic access$10602(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    return p1
.end method

.method static synthetic access$10800(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkOrientation()V

    return-void
.end method

.method static synthetic access$11001(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 340
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->inflatePaView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/widget/WidgetsPreviewPage;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 340
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaAlpha:F

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 340
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaScaleX:F

    return p1
.end method

.method static synthetic access$1902(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 340
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaScaleY:F

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)Lcom/miui/home/launcher/IBackAnimView;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/EditingEntryThumbnailView;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/HotSeats;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/SearchBar;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragLayer;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 340
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mAppLocateFolderScrollOffset:I

    return p0
.end method

.method static synthetic access$2602(Lcom/miui/home/launcher/Launcher;I)I
    .locals 0

    .line 340
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mAppLocateFolderScrollOffset:I

    return p1
.end method

.method static synthetic access$2700(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterContentObserver()V

    return-void
.end method

.method static synthetic access$2800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/WorkspaceThumbnailView;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherApplication;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FitSystemWindowView;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/search/SearchEdgeLayout;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkAllAppsIcon(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava8/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Launcher;->updateTitleTip(Ljava/util/Collection;Ljava8/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3902(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->changeToBackedupLockWallpaper()V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->autoChangeLockWallpaper(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/settings/LauncherGestureController;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    return-void
.end method

.method static synthetic access$4400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAssistantOpen()V

    return-void
.end method

.method static synthetic access$4500(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 340
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    return p0
.end method

.method static synthetic access$4600(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->reloadClockIfNeed()V

    return-void
.end method

.method static synthetic access$4700(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->notifyFancyIconPresent()V

    return-void
.end method

.method static synthetic access$4800(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    return p0
.end method

.method static synthetic access$4900(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Launcher;)Landroid/os/Handler;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/miui/home/launcher/Launcher;J)V
    .locals 0

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->startLockWallpaperPreviewActivity(J)V

    return-void
.end method

.method static synthetic access$5200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startTaplusService()V

    return-void
.end method

.method static synthetic access$5400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateShortcut(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->requestGlobalFoldersPreinstallAd()V

    return-void
.end method

.method static synthetic access$5700(Lcom/miui/home/launcher/Launcher;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$5802(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/miui/home/launcher/Launcher;J)Landroid/os/Bundle;
    .locals 0

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->generateDefaultParams(J)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6000(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .line 340
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6200(Lcom/miui/home/launcher/Launcher;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 340
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/Launcher;->geneateParams(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->reportLockWallpaperFail()V

    return-void
.end method

.method static synthetic access$6402(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 0

    .line 340
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->setLockWallpaperFromProvider(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    return p0
.end method

.method static synthetic access$6602(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkIntentPermissions(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6802(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 340
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return p0
.end method

.method static synthetic access$7000(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->fadeInOrOutScreenContentWhenFolderAnimate(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/Launcher;I)I
    .locals 0

    .line 340
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return p1
.end method

.method static synthetic access$7102(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->showUpsideEnterOrExitTipIfNeed(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7300(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    return-void
.end method

.method static synthetic access$7400(Lcom/miui/home/launcher/Launcher;)Landroid/view/ViewGroup;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7402(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBar:Z

    return p0
.end method

.method static synthetic access$7700(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$7800(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->getPackageNames(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->removeEmptyFolders()V

    return-void
.end method

.method static synthetic access$8100(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->afterShowUserPresentAnimation()V

    return-void
.end method

.method static synthetic access$8300(Lcom/miui/home/launcher/Launcher;)J
    .locals 2

    .line 340
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPersentAnimationPrepairedId:J

    return-wide v0
.end method

.method static synthetic access$8400(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->showUserPresentAnimation(Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragController;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object p0
.end method

.method static synthetic access$8702(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/miui/home/launcher/Launcher;I)Ljava/util/ArrayList;
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->getGadgetList(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8900(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Launcher;)J
    .locals 2

    .line 340
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    return-wide v0
.end method

.method static synthetic access$9000(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onUninstallShortcut(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/miui/home/launcher/Launcher;)Ljava/lang/Runnable;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    return-object p0
.end method

.method static synthetic access$9302(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/fsgesture/IFsGestureService;)Lcom/android/systemui/fsgesture/IFsGestureService;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    return-object p1
.end method

.method static synthetic access$9400(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    return p0
.end method

.method static synthetic access$9500(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    return p0
.end method

.method static synthetic access$9600(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->notifyFsGuestureHomeStatus(Z)V

    return-void
.end method

.method static synthetic access$9700(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9800(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9900(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Z
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->locateApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private adaptPNotchScreen(Landroid/view/Window;)V
    .locals 2

    .line 955
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 956
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    :try_start_0
    const-string v0, "android.view.WindowManager$LayoutParams"

    .line 958
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutInDisplayCutoutMode"

    .line 959
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 960
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 961
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher"

    const-string v1, "adaptPNotchScreen"

    .line 963
    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private addHomeFeedContainer()V
    .locals 3

    .line 1739
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    .line 1740
    new-instance v0, Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    .line 1741
    new-instance v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 1742
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshSettings()V

    return-void
.end method

.method private addNewInstallIndicator()V
    .locals 3

    .line 5534
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5536
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5537
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherProvider;->createdFirstTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5538
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$ywifFJ5L-zwkeKr-BDcNQcvynlw;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ywifFJ5L-zwkeKr-BDcNQcvynlw;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 5542
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5543
    new-instance v1, Lcom/miui/home/launcher/Launcher$53;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Launcher$53;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$4xfyy3kRyDGKebs77wvoyei2xH0;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$4xfyy3kRyDGKebs77wvoyei2xH0;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private addOnStateChangeFinishRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 4918
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setEditingStateChangeFinishRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private afterShowUserPresentAnimation()V
    .locals 5

    .line 5732
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 5736
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5737
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v2

    .line 5738
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4, v2, v3}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5739
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5743
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5744
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->showQuickCallCellLayoutTitle()V

    .line 5745
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->alignIconsToTopWithSaveDb()V

    .line 5746
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    goto :goto_1

    .line 5748
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->alignScreenIfNeed()V

    .line 5750
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->preloadFolderContent()V

    .line 5751
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkAllAppsLabel()V

    .line 5752
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addNewInstallIndicator()V

    .line 5753
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_4

    .line 5754
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkAllUserDeepShortcuts()V

    .line 5756
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$rziayQY9dOXyzSKxv-YKXh3armQ;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$rziayQY9dOXyzSKxv-YKXh3armQ;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 5757
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    .line 5758
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 5759
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startTaplusService()V

    .line 5760
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startAndBindService()V

    .line 5762
    invoke-static {}, Lcom/miui/home/launcher/common/AppCategoryManager;->getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;

    move-result-object v0

    .line 5763
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5764
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v4, Lcom/miui/home/launcher/-$$Lambda$Launcher$xeATL0QKIm0SveXzbVUPD-DpAhI;

    invoke-direct {v4, p0, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$xeATL0QKIm0SveXzbVUPD-DpAhI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 5769
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/common/AppCategoryManager;->initAppCategoryListAsync(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 5770
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5771
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAppsView()V

    .line 5772
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5773
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    .line 5775
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->trackShow()V

    .line 5776
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    .line 5777
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    return-void
.end method

.method private alignScreenIfNeed()V
    .locals 7

    .line 5781
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->shouldAlignScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5783
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIgnoreAlignScreenList()Ljava/lang/String;

    move-result-object v0

    .line 5785
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, ","

    .line 5786
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    move v3, v1

    .line 5788
    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5789
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v4

    .line 5790
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6, v4, v5}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_1

    .line 5791
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    .line 5792
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5795
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIgnoreAlignScreenList(Ljava/lang/String;)V

    .line 5796
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setShouldAlignScreen(Z)V

    :cond_4
    return-void
.end method

.method private applyingDefaultTheme()Z
    .locals 8

    const-string v0, "/data/system/theme"

    .line 3951
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3952
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3953
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 3957
    :cond_0
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    .line 3958
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "icons"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3959
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

    .line 3836
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3839
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$44;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$44;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 3882
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher$44;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    .line 6040
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

    .line 6041
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 6043
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cacheSceneScreenRef(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 2

    .line 4752
    new-instance v0, Lcom/miui/home/launcher/CustomableReference;

    .line 4753
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

    .line 6889
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6890
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "Launcher"

    const-string v1, "cancelMiuiThumbnailAnimation"

    .line 6891
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 6892
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelMiuiThumbnailAnimation(Landroid/content/Context;)V

    return-void
.end method

.method private changeScreenContent(F)V
    .locals 2

    .line 1937
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3f733333    # 0.95f

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    .line 1939
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 1940
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private changeScreenContentOnClose(F)V
    .locals 0

    .line 1926
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 1927
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContent(F)V

    return-void
.end method

.method private changeScreenContentOnOpen(F)V
    .locals 0

    .line 1921
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 1922
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContent(F)V

    return-void
.end method

.method private changeToBackedupLockWallpaper()V
    .locals 2

    .line 3943
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3944
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->resetLockWallpaper(Landroid/content/Context;)V

    .line 3945
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

    .line 7810
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

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 7813
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 7816
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 7817
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 7818
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 7819
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 7820
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private checkAllAppsIcon(Z)V
    .locals 5

    .line 5702
    invoke-static {}, Lcom/miui/launcher/utils/MamlUtils;->clearMamlCache()V

    .line 5703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5704
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    .line 5705
    invoke-virtual {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    if-nez p1, :cond_1

    .line 5706
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5707
    :cond_1
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-nez v3, :cond_2

    .line 5709
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5710
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5712
    :cond_2
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5715
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 5716
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v2, v3, v1}, Lcom/miui/home/launcher/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private checkAllAppsLabel()V
    .locals 2

    .line 5911
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$7uIlwHNYRh7_IHe39AfxO7PEGJw;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$7uIlwHNYRh7_IHe39AfxO7PEGJw;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkAllUserDeepShortcuts()V
    .locals 4

    .line 5839
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    .line 5840
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

    .line 5841
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$k2iNr_IEFwU4mc8dm4EoTfDJPgY;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$k2iNr_IEFwU4mc8dm4EoTfDJPgY;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;)V

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$cyl6VkHH3ZpzOH_V8uKc_pfc_Jg;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$cyl6VkHH3ZpzOH_V8uKc_pfc_Jg;

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUserUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava8/util/function/Consumer;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkAndPerformUserPresentAnimationOnFinishLoading(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;)V
    .locals 4

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "checkAndPerformUserPresentAnimationOnFinishLoading"

    .line 5721
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5722
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->getPrepareConsumer()Ljava8/util/function/Consumer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->prepairUserPersentAnimation(Ljava8/util/function/Consumer;)V

    .line 5723
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPersentAnimationPrepairedId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    if-nez v0, :cond_0

    const-string v0, "Launcher_UnlockAnimationStateMachine"

    const-string v1, "showUserPresentAnimation"

    .line 5724
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5725
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->showUserPresentAnimation(Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;)V

    goto :goto_0

    .line 5727
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->setPrepareByFinishLoading()V

    :goto_0
    return-void
.end method

.method private checkDarkMode()V
    .locals 1

    .line 8208
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8209
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onDarkModeChanged()V

    :cond_0
    return-void
.end method

.method private checkDeepShortcuts(Landroid/os/UserHandle;)V
    .locals 11

    const-string v0, "Launcher"

    .line 5858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDeepShortcuts, use "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " check deep shortcut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5859
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 5861
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5862
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5863
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 5864
    invoke-virtual {v3}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5868
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->queryForPinnedShortcuts(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 5870
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

    .line 5871
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5872
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->isDeepShortcutMatchCurrentMode(Lcom/miui/launcher/common/ShortcutInfoCompat;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v0, "Launcher"

    const-string v3, "checkDeepShortcuts, contact deep shortcut don\'t match currentMode"

    .line 5873
    invoke-static {v0, v3}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5878
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5879
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5880
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5881
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 5882
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/ShortcutInfo;

    .line 5884
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Launcher"

    const-string v9, "checkUserDeepShortcuts, update deepShortcut(%s, %s, %s)"

    .line 5885
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

    invoke-static {v7, v3}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5886
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/miui/home/launcher/ShortcutChangeTask;

    invoke-direct {v4, v8, v1, v0, p0}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    if-eqz v5, :cond_1

    .line 5890
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->makeInstallShortcutIntent(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object v3

    .line 5891
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/miui/home/launcher/Launcher$58;

    invoke-direct {v5, p0, v3, v0}, Lcom/miui/home/launcher/Launcher$58;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 5904
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

    .line 5905
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

    invoke-static {v2, v7}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
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

    .line 1058
    new-instance v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;-><init>(Lcom/miui/home/launcher/Launcher$1;)V

    .line 1059
    invoke-static {p0, v0}, Lcom/miui/home/launcher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    .line 1061
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1063
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1064
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1066
    iget v4, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1067
    iget v5, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1069
    iget v6, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 1070
    iget v1, v1, Landroid/content/res/Configuration;->mnc:I

    .line 1072
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

    .line 1075
    iput-object v3, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1076
    iput v5, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1077
    iput v1, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 1079
    invoke-static {p0, v0}, Lcom/miui/home/launcher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    return v8

    :cond_2
    return v7
.end method

.method private checkIntentPermissions(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.intent.action.CALL"

    .line 4280
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4281
    invoke-static {p0}, Lcom/miui/home/launcher/common/PermissionUtils;->checkCallPhonePermission(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 4282
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/PermissionUtils;->requestCallPhonePermissions(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private checkInvalidateGadget()V
    .locals 4

    .line 5676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5677
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

    .line 5678
    instance-of v3, v2, Lcom/miui/home/launcher/gadget/MtzGadget;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/gadget/MtzGadget;

    .line 5679
    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/MtzGadget;->isInvalidateGadget()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5680
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v3, :cond_0

    .line 5681
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5684
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5685
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    .line 5686
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f10020f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 5687
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method private checkNewInstalledAppsBeStarted()V
    .locals 4

    .line 1545
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1546
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 1547
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1548
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1550
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1551
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

    .line 1552
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1553
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1556
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/Launcher$5;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Launcher$5;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkOrientation()V
    .locals 4

    .line 8196
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8197
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8198
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    const-string v1, "Launcher"

    .line 8199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen orientation changed, newOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 8200
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 8201
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onScreenOrientationChanged()V

    .line 8202
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method private clearForReload()V
    .locals 3

    .line 5270
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5271
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$NJOekdPMOzsFrmcAY8SQC5oqj3g;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/-$$Lambda$NJOekdPMOzsFrmcAY8SQC5oqj3g;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 5272
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5273
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5274
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

    .line 5275
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_0

    .line 5277
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5278
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->removeAllScreens()V

    .line 5279
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->clearScreens()V

    return-void
.end method

.method private clearLastAddInfo()V
    .locals 1

    .line 2104
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 2105
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    const/4 v0, 0x0

    .line 2106
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    :cond_0
    return-void
.end method

.method private clearRemoteAnimationProvider()V
    .locals 1

    .line 8534
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8535
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 8536
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->clearRemoteAnimationProvider()V

    :cond_0
    return-void
.end method

.method private clearTypedText()V
    .locals 2

    .line 1612
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1613
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1614
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v9, p0

    .line 2052
    iget-object v0, v9, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-nez v1, :cond_0

    const-string v0, "Launcher"

    const-string v1, "completeAddAppWidget error, mLastAddInfo isn\'t class(LauncherAppWidgetProviderInfo)"

    .line 2053
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2056
    :cond_0
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    .line 2061
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "appWidgetId"

    .line 2063
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Launcher"

    .line 2064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeAddAppWidget with Intent extras appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    .line 2067
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v2

    const-string v3, "Launcher"

    .line 2068
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeAddAppWidget with mLastAddInfo appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ne v2, v1, :cond_3

    const-string v0, "Launcher"

    const-string v1, "completeAddAppWidget error, invalidate appWidgetId"

    .line 2072
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    return-void

    .line 2078
    :cond_3
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 2080
    iget-wide v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 2081
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

    .line 2084
    :cond_4
    iget-object v3, v9, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v3, v9, v1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2085
    invoke-direct {v9, v1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 2088
    iget-object v3, v9, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v9, v2, v4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2090
    iget-object v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9, v9, v3, v4}, Lcom/miui/home/launcher/Launcher;->updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    .line 2091
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v2, v4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2092
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2093
    iget-object v2, v9, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    iget v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/home/launcher/CellLayout;->getWidgetMeasureSpec(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 2095
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v3 .. v8}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 2097
    iget-object v10, v9, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v11, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v12, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iget v13, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    iget v14, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v15, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 2098
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v16

    .line 2097
    invoke-virtual/range {v10 .. v16}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 2100
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    return-void
.end method

.method private completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;
    .locals 6

    .line 2003
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

    .line 2005
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2006
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2007
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v5, v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v5, :cond_2

    .line 2008
    check-cast v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 2011
    :goto_1
    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    const/4 v5, 0x1

    .line 2012
    invoke-direct {p0, v0, v1, v5}, Lcom/miui/home/launcher/Launcher;->findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v3

    .line 2015
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1, p1, v0, v5}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2017
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/ShortcutInfo;->setIconPackage(Ljava/lang/String;)V

    .line 2018
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2019
    invoke-virtual {p0, p1, v5, v2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v3
.end method

.method private completeAddShortcutToggle(I)Landroid/view/View;
    .locals 2

    .line 2038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ToggleId"

    .line 2039
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2040
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 2041
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2042
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private disconnectFsGuestureService()V
    .locals 3

    .line 7992
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "com.miui.home"

    .line 7994
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/fsgesture/IFsGestureService;->unregisterCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7996
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 7999
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    return-void
.end method

.method private doAllEventBusHandlers(Ljava8/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xc

    .line 8043
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

    .line 8044
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

    .line 8043
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$t87uJn7pLh4op43xzzRE17XYtCs;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$t87uJn7pLh4op43xzzRE17XYtCs;-><init>(Ljava8/util/function/Consumer;)V

    .line 8046
    invoke-interface {v0, v1}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method private doSelfProtect()V
    .locals 3

    .line 712
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mToken:Landroid/os/Binder;

    .line 713
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mToken:Landroid/os/Binder;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->setProcessForeground(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "setProcessForeground"

    .line 715
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V
    .locals 10

    .line 4650
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->moveDragViewToFirst(Landroid/view/View;)V

    .line 4651
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 4652
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedDragSources()[Lcom/miui/home/launcher/DragSource;

    move-result-object v9

    .line 4654
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4655
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 4657
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 4658
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    iget p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 4657
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/FolderCling;->beforeDragStart(I)V

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-nez p2, :cond_1

    .line 4661
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v3, 0x0

    .line 4662
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

    .line 4661
    invoke-virtual/range {v1 .. v8}, Lcom/miui/home/launcher/DragController;->startDrag([Lcom/miui/home/launcher/ShortcutInfo;ZF[Lcom/miui/home/launcher/DragSource;IIZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4664
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 4668
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    .line 4669
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, v9

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V

    goto :goto_1

    .line 4672
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p2, v0, v9, v3, v2}, Lcom/miui/home/launcher/DragController;->autoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;II)V

    .line 4674
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 4678
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->afterDragStart()V

    .line 4680
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDragMultiItems()V

    return-void
.end method

.method private dragSingleItem(Lcom/miui/home/launcher/CellLayout$CellInfo;Landroid/view/View;)V
    .locals 1

    .line 4638
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->isViewInFolder(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4639
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Folder;->startDrag(Landroid/view/View;)V

    goto :goto_0

    .line 4641
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V

    .line 4643
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_1

    .line 4644
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->saveCheckedStatus()V

    .line 4646
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDragItem(Landroid/view/View;)V

    return-void
.end method

.method private fadeInOrOutScreenContentWhenFolderAnimate(Z)V
    .locals 3

    .line 1908
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 1909
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    if-eqz p1, :cond_0

    .line 1911
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    goto :goto_1

    .line 1913
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 1914
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

    .line 1915
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    .line 1916
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

    .line 3039
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

    .line 3043
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/Launcher;->findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p1

    return-object p1
.end method

.method private findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3047
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 3048
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    .line 3053
    :cond_1
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIII)[I

    move-result-object p1

    if-nez p1, :cond_3

    if-eqz p7, :cond_2

    const p1, 0x7f1001c1

    .line 3056
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    :cond_2
    return-object p2

    .line 3061
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {p2}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    const/4 p3, 0x0

    .line 3062
    aget p3, p1, p3

    iput p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    const/4 p3, 0x1

    .line 3063
    aget p1, p1, p3

    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 3064
    iput p5, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 3065
    iput p6, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    const/16 p1, -0x64

    .line 3066
    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    .line 3067
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p3

    iput-wide p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-object p2
.end method

.method private geneateParams(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 3689
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "showTime"

    .line 3690
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "currentWallpaperInfo"

    .line 3691
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wallpaperInfos"

    .line 3692
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "adWallpaperInfos"

    .line 3693
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dialogComponent"

    .line 3694
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

    .line 6716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6717
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

    .line 6718
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 6719
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 6720
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

    .line 6837
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 6840
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x1

    .line 6841
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6842
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6843
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

    .line 8270
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 8271
    instance-of v0, p0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 8272
    check-cast p0, Lcom/miui/home/launcher/Launcher;

    return-object p0

    .line 8274
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;
    .locals 1

    .line 6573
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6576
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6577
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

    .line 6574
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

    .line 6593
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6594
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v8, Lcom/miui/home/launcher/-$$Lambda$Launcher$TGxZbfmWPJ36MZZ17otqIpTpeH4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/-$$Lambda$Launcher$TGxZbfmWPJ36MZZ17otqIpTpeH4;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method private getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 3797
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request_json"

    .line 3798
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "getNextLockWallpaperUri"

    .line 3799
    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/launcher/utils/ContentProviderUtils;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "result_json"

    .line 3804
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3807
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 3815
    new-instance v0, Lcom/miui/home/launcher/Launcher$43;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$43;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 3820
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher$43;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 3822
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

    .line 3824
    invoke-virtual {p1, p3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3825
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    .line 3829
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

    .line 5570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5571
    invoke-static {p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$eydry859yWABktFe49TedwPhLLs;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$eydry859yWABktFe49TedwPhLLs;-><init>(Ljava/util/ArrayList;)V

    .line 5572
    invoke-interface {p1, v1}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

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

    .line 6542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6543
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$3Pecs7mfejlVGOyHNXWLfCpbZQk;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$3Pecs7mfejlVGOyHNXWLfCpbZQk;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getSnapToScreenIndexForLocate(Lcom/miui/home/launcher/ItemInfo;)I
    .locals 4

    .line 2429
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2430
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    return p1

    .line 2431
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2432
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getNextTypeScreenIndex()I

    move-result p1

    return p1

    .line 2434
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    return p1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goOutOldLayer()V
    .locals 6

    .line 4805
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    .line 4806
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 4807
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    .line 4809
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

    .line 4810
    new-array v2, v2, [F

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v3

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4811
    new-instance v2, Lcom/miui/home/launcher/Launcher$49;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$49;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4819
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private handleActivityNotFound(Ljava/lang/String;)Z
    .locals 5

    .line 4408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4411
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    .line 4413
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "com.xiaomi.market"

    .line 4415
    invoke-virtual {p0, v3, v1}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4416
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100140

    .line 4417
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10013f

    .line 4418
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000a1

    const/4 v3, 0x0

    .line 4419
    invoke-virtual {v0, v1, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000ba

    new-instance v3, Lcom/miui/home/launcher/Launcher$45;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/Launcher$45;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    .line 4420
    invoke-virtual {v0, v1, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    .line 4431
    invoke-virtual {p1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    .line 4432
    invoke-virtual {p1}, Lmiui/app/AlertDialog;->show()V

    return v2

    .line 4437
    :cond_1
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 4438
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4439
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4440
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 4441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 4442
    new-instance v0, Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4443
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_2
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

    .line 5564
    invoke-static {p2}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5565
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5566
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

    .line 8380
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8381
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

    .line 1789
    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.miui.home.launcher.assistant.ui.view.AssistHolderView"

    .line 1790
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1791
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/util/AttributeSet;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1792
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const/4 v3, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1793
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1794
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1795
    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    .line 1796
    iput v4, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 1797
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    iget v2, v2, Lcom/miui/home/launcher/MinusOneScreenView;->mCurrentScreenIndex:I

    if-nez v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/MinusOneScreenView;->sendMinusScreenUpdateBroadcast(Z)V

    const-string v1, "Launcher"

    const-string v2, "loadPaView SUCCESS"

    .line 1798
    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Launcher"

    const-string v3, "Exception"

    .line 1801
    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1804
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    .line 1805
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    if-le v1, v0, :cond_1

    const-string v0, "Launcher"

    const-string v1, "restart process"

    .line 1808
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method

.method private initCleanLogWork()V
    .locals 5

    .line 929
    new-instance v0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v1, Lcom/miui/home/launcher/log/LogCleanWorker;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 931
    invoke-virtual {v0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 932
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v1

    const-string v2, "cleanLogWork"

    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 933
    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method private initConflictItems()V
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ErrorBar;->getConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1011
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DropTargetBar;->getDropTargetBarConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1012
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1013
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ErrorBar;->getConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    .line 1014
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    .line 1015
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getDropTargetBarConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    return-void
.end method

.method private initLauncher()V
    .locals 1

    .line 969
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$f1o93n0s5MOzRbZORf-L1-BaRtA;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$f1o93n0s5MOzRbZORf-L1-BaRtA;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initLoadingAsyncInflateManager()V
    .locals 1

    .line 5577
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    if-eqz v0, :cond_0

    .line 5578
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->shutDownNow()V

    .line 5580
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    return-void
.end method

.method public static final isClipTransitionDevice()Z
    .locals 1

    .line 1032
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsClipTransitionDevice:Z

    return v0
.end method

.method private isDeepShortcutMatchCurrentMode(Lcom/miui/launcher/common/ShortcutInfoCompat;)Z
    .locals 2

    .line 5850
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "is_elderly_man_shortcut"

    .line 5852
    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 5854
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

    .line 5131
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5132
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5133
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

    .line 1019
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

.method private isViewInFolder(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 4582
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 4583
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

.method public static synthetic lambda$addNewInstallIndicator$21(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 3

    .line 5539
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getNewInstalledShortcutInfos(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    .line 5538
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic lambda$addNewInstallIndicator$24(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;Ljava/util/Map;)V
    .locals 1

    .line 5549
    invoke-static {p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$r4pisgUNiZ7Qu2eNDvqZwH7EdVw;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$r4pisgUNiZ7Qu2eNDvqZwH7EdVw;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/Map;)V

    .line 5550
    invoke-interface {p1, v0}, Ljava8/util/stream/Stream;->filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$Launcher$qq3X4bJFxIRaA6-Yeyb4Z1N8kxk;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$qq3X4bJFxIRaA6-Yeyb4Z1N8kxk;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 5551
    invoke-interface {p1, p2}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$addShortcut$37(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/view/View;
    .locals 0

    .line 6394
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$addShortcut$38(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;ZZLandroid/view/View;)V
    .locals 11

    .line 6395
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

    .line 7156
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$addToAppsList$45(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/LauncherApplication;)V
    .locals 0

    .line 7159
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->checkCanBeDeleted(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$afterShowUserPresentAnimation$29(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 5756
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/MarketUtils;->startUserGuide(Landroid/content/Context;Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic lambda$afterShowUserPresentAnimation$30(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 2

    .line 5765
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

    .line 5766
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindAddedShortcuts$35(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 1

    .line 6000
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6001
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->tellAllFoldersWhenAppAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$bindAppsRemoved$47(Ljava/util/ArrayList;)Ljava8/util/stream/Stream;
    .locals 0

    .line 7241
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bindAppsRemoved$48(Ljava/util/List;)Ljava8/util/stream/Stream;
    .locals 0

    .line 7242
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$bindAppsRemoved$51(Lcom/miui/home/launcher/Launcher;Ljava8/util/function/Supplier;Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)V
    .locals 1

    .line 7244
    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Stream;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$wpdtIRaYclb2WPYlUFoQIEKbe5Y;

    invoke-direct {v0, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$wpdtIRaYclb2WPYlUFoQIEKbe5Y;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    .line 7245
    invoke-interface {p1, v0}, Ljava8/util/stream/Stream;->filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$zwFGdO0ZVuT5dSo9U_Mxv-8tsb8;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$zwFGdO0ZVuT5dSo9U_Mxv-8tsb8;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    .line 7248
    invoke-interface {p1, v0}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    .line 7253
    instance-of p1, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-nez p1, :cond_0

    .line 7254
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

    .line 7260
    invoke-static {p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$gBys3j-0AFmuIr7cI-O24UPrB98;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$gBys3j-0AFmuIr7cI-O24UPrB98;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    .line 7261
    invoke-interface {p1, v0}, Ljava8/util/stream/Stream;->filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$Launcher$qrRJVb8JqJg4fT-u7hUHJuEesfI;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$qrRJVb8JqJg4fT-u7hUHJuEesfI;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 7264
    invoke-interface {p1, p2}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$bindShortcutsChangedOnAppUpdate$36(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 7

    .line 6018
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6019
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

    .line 6020
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

    .line 6021
    iget-object v5, v4, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    iget-object v6, v2, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 6022
    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6023
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6024
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getRuntimeStatusFlags()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setRuntimeStatusFlags(I)V

    const/4 v5, 0x0

    .line 6025
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/AppInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 6026
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ShortcutInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 6027
    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6028
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v2, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Launcher;->bindShortcutsChanged(Ljava/util/List;Landroid/os/UserHandle;)V

    .line 6029
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6030
    iget-wide v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6035
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->bindFolderPreviewIconsChanged(Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic lambda$checkAllAppsLabel$34(Lcom/miui/home/launcher/Launcher;)V
    .locals 10

    .line 5912
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 5913
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 5914
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5915
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 5916
    iget-object v0, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 5917
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 5918
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5920
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 5921
    new-instance v9, Lcom/miui/home/launcher/-$$Lambda$Launcher$i6vw6rjxHZHDnbNxq5iG04UMIrc;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v3

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/-$$Lambda$Launcher$i6vw6rjxHZHDnbNxq5iG04UMIrc;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V

    .line 5954
    invoke-static {v9}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$checkAllUserDeepShortcuts$31(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;)V
    .locals 0

    .line 5842
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkDeepShortcuts(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic lambda$checkAllUserDeepShortcuts$32(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "checkAllDeepShortcuts"

    .line 5843
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$doAllEventBusHandlers$56(Ljava8/util/function/Consumer;Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8048
    invoke-interface {p1}, Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;->getEventBusHandlers()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p1

    .line 8049
    invoke-interface {p1, p0}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$finishLoading$26(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 5656
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->checkAllAppsIcon(Z)V

    return-void
.end method

.method public static synthetic lambda$finishLoading$27(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 5661
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshProgressIcons()V

    return-void
.end method

.method public static synthetic lambda$getLoadedDeepShortcutList$41(Lcom/miui/home/launcher/Launcher;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6595
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

    .line 6596
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isDeepShortcut()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 6597
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6598
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    if-eqz p3, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 6599
    invoke-virtual {v2}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6600
    :cond_3
    check-cast v1, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic lambda$getPackageNames$25(Ljava/util/ArrayList;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 5572
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getShortcutInfoWithIntent$40(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6562
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

    .line 6563
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

    .line 6564
    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6565
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getShortcutInfoWithName$39(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6544
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 6545
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

    .line 6546
    iget v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 6547
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6548
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6549
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getShowingItem$43(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6999
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getShowingShortcutIcon(Ljava/lang/String;I)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    .line 7000
    instance-of p2, p1, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 7001
    move-object p2, p1

    check-cast p2, Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    .line 7006
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setCurSelectedIcon(Lcom/miui/home/launcher/IBackAnimView;)V

    .line 7007
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_5

    .line 7012
    invoke-interface {p1}, Lcom/miui/home/launcher/IBackAnimView;->getIconLocation()Landroid/graphics/Rect;

    move-result-object p2

    .line 7013
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    invoke-interface {p1, v1}, Lcom/miui/home/launcher/IBackAnimView;->getLocationOnScreen([I)V

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 7015
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v1, v2, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 7016
    iput-object p3, p0, Lcom/miui/home/launcher/Launcher;->mIconImageRect:Landroid/graphics/Rect;

    .line 7018
    :cond_1
    invoke-interface {p1}, Lcom/miui/home/launcher/IBackAnimView;->getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 7020
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 7021
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    if-lez p2, :cond_5

    if-lez p3, :cond_5

    .line 7023
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 7024
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 7025
    :cond_2
    instance-of v1, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v1, :cond_3

    .line 7026
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->prepareBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    goto :goto_0

    .line 7027
    :cond_3
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->is720Mode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7028
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->getStartDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7030
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 7034
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7035
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7036
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-object v0

    .line 7003
    :cond_6
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0
.end method

.method public static synthetic lambda$initLauncher$7(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 970
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 971
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerContentObservers()V

    .line 972
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAssistantOpen()V

    .line 974
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->applyingDefaultTheme()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsDefaultThemeApplied:Z

    .line 976
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsInSnapShotMode()V

    .line 977
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->requestIsAppStoreEnabled()V

    .line 978
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkForLocaleChange()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    if-eqz v0, :cond_1

    .line 979
    :cond_0
    invoke-static {}, Lmiui/util/FileAccessable$Factory;->clearCache()V

    .line 981
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->resetLockWallpaperProviderIfNeeded(Landroid/content/Context;)V

    .line 982
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
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

    .line 982
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 984
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setCompatibilityVersionIfNeed()V

    .line 986
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    return-void
.end method

.method static synthetic lambda$loadPaView$11(Lcom/miui/home/launcher/module/ModuleManagerCompat;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    const-string p1, "com.miui.personalassistant"

    .line 1773
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->loadModules([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$new$20(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)I
    .locals 4

    .line 5516
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 5517
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    .line 5518
    :cond_0
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 5519
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 5520
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p2

    sub-int/2addr p2, p1

    return p2

    .line 5522
    :cond_1
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_2

    .line 5523
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sub-int/2addr p2, p1

    return p2

    .line 5525
    :cond_2
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public static synthetic lambda$null$18(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 5157
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->changeStatusBarMode()V

    return-void
.end method

.method public static synthetic lambda$null$22(Lcom/miui/home/launcher/Launcher;Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 5550
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->hasAppBeUsed(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/Map;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic lambda$null$23(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 5552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show indicator, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 5553
    iput v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 5554
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 5555
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 5556
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5557
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic lambda$null$33(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V
    .locals 0

    .line 5922
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemUserInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 5925
    iget p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez p1, :cond_1

    const/high16 p1, 0xc0000

    .line 5926
    invoke-virtual {p3, p4, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 5931
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, p3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 5933
    :cond_1
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5936
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 5937
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/miui/home/launcher/Launcher$59;

    invoke-direct {p4, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$59;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/CharSequence;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-eqz p5, :cond_3

    const-string p1, "Launcher"

    .line 5948
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "check lable is last "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "pref_key_last_label_locale"

    .line 5951
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 5949
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic lambda$null$49(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 2

    .line 7246
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

    .line 7247
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

.method public static synthetic lambda$null$50(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    const-string v0, "Launcher"

    .line 7249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove icon when bind apps removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 7250
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->needRemoveFromDB(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    .line 7251
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unCheckShortcut(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$52(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 1

    .line 7262
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7263
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

    .line 7265
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7266
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7267
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

    .line 4196
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->checkForGameFolder(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$onCreate$0()V
    .locals 1

    .line 795
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->migrateData()V

    .line 797
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

    .line 799
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$onCreate$2(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 843
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->tryToRegisterWidgetListener()V

    return-void
.end method

.method static synthetic lambda$onCreate$3(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "tryToRegisterWidgetListener"

    .line 844
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$onCreate$4(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 850
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

    .line 898
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$6(Ljava/lang/Object;)V
    .locals 1

    .line 902
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onDestroy$14(Ljava/lang/Object;)V
    .locals 1

    .line 2609
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2610
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onResume$10(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->hookViewRootImpl(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic lambda$onResume$8(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->startFallbackHomeInIdleHander(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onResume$9(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 1332
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    return-void
.end method

.method public static synthetic lambda$onWindowFocusChanged$55(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 7430
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    return-void
.end method

.method public static synthetic lambda$refreshProgressIcons$28(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 5693
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

    .line 5694
    instance-of v2, v1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz v2, :cond_0

    .line 5695
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->onIconChanged(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$removeDeepShortcut$42(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 6623
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/Utilities;->getUserForUserId(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p1

    .line 6622
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->unpinShortcutIfExist(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$removeFromAppsList$46(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7168
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$resetScreenContent$13(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 1949
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setupAnimations$12(Lcom/miui/home/launcher/Launcher;F)V
    .locals 4

    .line 1856
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaAlpha:F

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1857
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaScaleX:F

    mul-float/2addr v2, p1

    sub-float v2, v3, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1858
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaScaleY:F

    mul-float/2addr v1, p1

    sub-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1859
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    if-eqz v0, :cond_0

    .line 1862
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderCling;->setBackgroundColor(I)V

    .line 1866
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getUpdateListener()Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;->onAnimationUpdate(F)V

    return-void
.end method

.method public static synthetic lambda$startActivity$16(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 1

    .line 4339
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4340
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 4339
    invoke-static {p0, v0, p2, p1, p3}, Lcom/miui/launcher/utils/PortableUtils;->startMainActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$startActivityForResult$17(Lcom/miui/home/launcher/Launcher;ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 4390
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    :cond_0
    if-lt p1, v1, :cond_1

    .line 4393
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    .line 4395
    :cond_1
    invoke-static {p0, p2, p1, p3}, Lcom/miui/home/launcher/Launcher;->access$11001(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$updateStatusBarClock$19(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 5157
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$TGsjNq_wXcI4BZguJEBUL4zFNVY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$TGsjNq_wXcI4BZguJEBUL4zFNVY;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadPaView()V
    .locals 3

    .line 1763
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    .line 1764
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    if-eqz v1, :cond_0

    const-string v0, "Launcher"

    const-string v1, "loadPaView module is loading"

    .line 1765
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1768
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 1769
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    const-string v1, "Launcher"

    const-string v2, "loadPaView start"

    .line 1771
    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$KwitBGKJvxbcyvMLY1MDoZGyids;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$KwitBGKJvxbcyvMLY1MDoZGyids;-><init>(Lcom/miui/home/launcher/module/ModuleManagerCompat;)V

    new-instance v0, Lcom/miui/home/launcher/Launcher$7;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$7;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private locateApp(Ljava/lang/String;)Z
    .locals 6

    .line 2369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2372
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2373
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 2375
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2376
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 2378
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2379
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->hideSceneScreen(Z)V

    .line 2381
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    .line 2382
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2385
    :cond_4
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 2386
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 2387
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2388
    new-instance v3, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForUserId(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 2389
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2391
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2392
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v4, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 2394
    :cond_5
    sget-object v4, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2395
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v4, v5, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 2397
    :cond_6
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2398
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onStartHighlightLocatedApp()V

    return v2

    :cond_7
    const/4 v3, 0x2

    .line 2403
    new-array v3, v3, [Ljava/lang/Integer;

    .line 2404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 2403
    invoke-virtual {p0, p1, v0, v3}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 2406
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2407
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    :cond_8
    if-eqz v0, :cond_9

    .line 2409
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2410
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onStartHighlightLocatedApp()V

    return v2

    :cond_9
    return v1
.end method

.method private locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2439
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2440
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 2441
    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->getSnapToScreenIndexForLocate(Lcom/miui/home/launcher/ItemInfo;)I

    move-result v2

    .line 2442
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v0

    .line 2443
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/lit16 v6, v5, 0x12c

    if-eqz v3, :cond_3

    .line 2444
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Workspace;->getScreenSnapMaxDuration()I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    add-int/2addr v6, v7

    .line 2446
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2447
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v7, v4}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I

    .line 2450
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

    .line 2458
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/home/launcher/Launcher$15;

    invoke-direct {v7, p0, v1, p1, v5}, Lcom/miui/home/launcher/Launcher$15;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ShortcutInfo;I)V

    int-to-long v5, v6

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_6
    return v0

    .line 2452
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$14;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$14;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    int-to-long v5, v6

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    if-eqz v3, :cond_8

    .line 2508
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/Launcher$16;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/Launcher$16;-><init>(Lcom/miui/home/launcher/Launcher;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return v4
.end method

.method private makeUnableToStartActivityToast()V
    .locals 2

    .line 4367
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f10002e

    .line 4368
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const v0, 0x7f10002d

    .line 4370
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private needCancelBackAnimationWhenWorkspaceScroll()Z
    .locals 3

    .line 6864
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6865
    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 6866
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
    .locals 2

    .line 7229
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7230
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7231
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->isPackageDisableAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

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

    .line 6213
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 6214
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendPresentCommand(Landroid/view/ViewGroup;)V

    .line 6215
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendPresentCommand(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private notifyFsGuestureHomeStatus(Z)V
    .locals 2

    .line 8003
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8004
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$79;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$79;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8013
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

    .line 8015
    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private notifyGadgetStateChanged(I)V
    .locals 6

    .line 1396
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1397
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 1398
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1424
    :pswitch_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_1

    .line 1421
    :pswitch_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_1

    .line 1418
    :pswitch_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_1

    .line 1415
    :pswitch_3
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    goto :goto_1

    .line 1410
    :pswitch_4
    iget-wide v2, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1411
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_1

    .line 1407
    :pswitch_5
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 1404
    :pswitch_6
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    goto :goto_1

    .line 1401
    :pswitch_7
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1429
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1430
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

    .line 1432
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

    .line 4153
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    return-void
.end method

.method private onDarkModeChanged()V
    .locals 6

    .line 8214
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8215
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->onDarkModeChanged()V

    .line 8216
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 8218
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz v0, :cond_1

    .line 8219
    invoke-virtual {v0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->onDarkModeChanged()V

    .line 8220
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 8222
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->createAllSystemShortcutMenuItems()V

    .line 8223
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    const-string v2, "color_mode"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8224
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8225
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

    .line 8226
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v1, p0, v4}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeNewHomeView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/FeedTransController;)V

    .line 8227
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragLayer;->getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v1, v4, v5}, Lcom/miui/home/launcher/view/HomeFeedContainer;->createNewHomeView(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/touch/FeedTransController;)V

    if-eqz v0, :cond_3

    .line 8229
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->autoShowHideFeed(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 8232
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8234
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onDarkModeChange()V

    .line 8236
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    .line 8237
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAllAppWidgetOptions()V

    return-void
.end method

.method private onLauncherComeBackFromOtherApp(Ljava/lang/String;)V
    .locals 1

    .line 6982
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6983
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

    .line 6632
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6633
    instance-of v0, v0, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-eqz v0, :cond_0

    .line 6634
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    return-void

    :cond_1
    return-void
.end method

.method private operateAllPresentAnimationRelatedViews(Ljava8/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "Landroid/view/View;",
            ">;",
            "Lcom/miui/home/launcher/CellLayout;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 6289
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6290
    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6291
    invoke-interface {p1, v2}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6293
    :cond_1
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    .line 6294
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {p2}, Lcom/miui/home/launcher/HotSeats;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 6295
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/HotSeats;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6297
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6298
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-interface {p1, p2}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6300
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public static performLayoutNow(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 7358
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7359
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7358
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 7360
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

    .line 5827
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

    .line 5829
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/home/launcher/Launcher$57;

    invoke-direct {v3, p0, v1}, Lcom/miui/home/launcher/Launcher$57;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepairUserPersentAnimation(Ljava8/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 6233
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    if-nez v0, :cond_0

    return-void

    .line 6236
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPersentAnimationPrepairedId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6237
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6238
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->canBeDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6241
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->operateAllPresentAnimationRelatedViews(Ljava8/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 6242
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPersentAnimationPrepairedId:J

    .line 6243
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherLifecycleLog;->prepareUserPresentAnimation()V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
    .locals 9

    .line 7534
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkDuplicateIconWhenRecommendAdded(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 7537
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7538
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getMarketPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->container:J

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V

    const/4 v2, 0x0

    .line 7540
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setStarted(Z)V

    .line 7541
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 7542
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7543
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7544
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->bindAppProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z

    return-object v0
.end method

.method private prepareSceneMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 2679
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2680
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f10016d

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x42

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 2682
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f100171

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x45

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :goto_0
    const/4 v0, 0x1

    .line 2684
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2685
    invoke-interface {p1, v0, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return v0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 3

    const/4 v0, 0x0

    .line 1094
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

    .line 1095
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1096
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1097
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1105
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

    .line 1108
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

.method private refreshFolderIcons()V
    .locals 4

    .line 5815
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

    .line 5817
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

    .line 5692
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$NL1GIJO3Eh6wpYu9aSZmW-NllzQ;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$NL1GIJO3Eh6wpYu9aSZmW-NllzQ;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 4

    .line 3502
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 3503
    new-instance v0, Lcom/miui/home/launcher/Launcher$39;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$39;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3612
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PRIVACY_MODE_CHANGED"

    .line 3613
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3614
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3615
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android_secret_code"

    .line 3616
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3617
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3618
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3619
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3620
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3621
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3622
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SYSTEM_UI_VISIBILITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3623
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3624
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.miui.REQUEST_LOCKSCREEN_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3625
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3626
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3627
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3628
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.mihomemanager.clearMiuiHome"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3629
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3630
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3631
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3632
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.action.appcompatibility.update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3633
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3634
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3635
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3636
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3637
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3638
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isSupportDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3639
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3640
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3642
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 3643
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.ad.PREINSTALL_AD_UPDATING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3644
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private registerContentObservers()V
    .locals 6

    .line 3077
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3078
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "miui_home_screen_cells_size"

    .line 3081
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 3080
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "key_miui_mod_icon_enable"

    .line 3084
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    .line 3083
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "light_speed_app"

    .line 3086
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_wallpaper_provider_authority"

    .line 3088
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    .line 3087
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "miui_home_lock_screen_cells"

    .line 3091
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    .line 3090
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "force_fsg_nav_bar"

    .line 3094
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    .line 3093
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "button_voice_service"

    .line 3097
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    .line 3096
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "QSB_SCROLL_OPTION_STATUS"

    .line 3098
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "QSB_SCROLL_ENTRANCE_STATUS"

    .line 3100
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launchMiBrowserWhileSwipe"

    .line 3102
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launcher_pulldown_gesture"

    .line 3104
    invoke-static {v1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launcher_slideup_gesture"

    .line 3106
    invoke-static {v1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "com.miui.newhome.preferences.key_can_use_new_home"

    .line 3108
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "delete_sound_effect"

    .line 3110
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "open_personal_assistant"

    .line 3112
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "elderly_mode"

    .line 3114
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_0
    const-string v1, "content://com.miui.securitycenter.provider/update_privacyapps_icon"

    .line 3118
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    .line 3117
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3121
    :catch_0
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isSupportDualClock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 3122
    new-instance v1, Lcom/miui/home/launcher/Launcher$DualClockObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/Launcher$DualClockObserver;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    const-string v1, "auto_dual_clock"

    .line 3123
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "resident_id"

    .line 3125
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "resident_timezone"

    .line 3127
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3130
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3131
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerSearchBarObserver()V

    .line 3133
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "darken_wallpaper_under_dark_mode"

    .line 3134
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3137
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "is_default_icon"

    .line 3138
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3140
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3141
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->registerAnimDurationRatioObserver(Landroid/content/ContentResolver;)V

    .line 3143
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "freeform_window_state"

    .line 3144
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3146
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v1, "freeform_package_name"

    .line 3147
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3149
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3151
    :cond_4
    invoke-static {}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSystemAnimationObserverUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3153
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerSearchBarObserver()V
    .locals 4

    .line 3205
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 3206
    new-instance v0, Lcom/miui/home/launcher/Launcher$SearchBarObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$SearchBarObserver;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    .line 3207
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

    .line 4911
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

    .line 4914
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result p1

    return p1
.end method

.method private reloadClockIfNeed()V
    .locals 3

    const-string v0, "Launcher.DualClock"

    const-string v1, "reloadClockIfNeed"

    .line 3660
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    new-instance v0, Lcom/miui/home/launcher/Launcher$40;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$40;-><init>(Lcom/miui/home/launcher/Launcher;)V

    new-instance v1, Lcom/miui/home/launcher/Launcher$41;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$41;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private removeEmptyFolders()V
    .locals 4

    .line 7706
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7707
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7708
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7709
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7710
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    .line 7711
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v3

    if-nez v3, :cond_0

    .line 7712
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7715
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

    .line 7716
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7717
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    goto :goto_1

    .line 7719
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 7720
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 4

    .line 2139
    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2140
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    const/4 v0, 0x0

    .line 2142
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

    .line 2143
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 2149
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2150
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 2151
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 2152
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2154
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2157
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 2158
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_3
    return-void
.end method

.method private removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4700
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4701
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/miui/home/launcher/Workspace;

    if-eqz v2, :cond_0

    .line 4702
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Workspace;->onDragStarted(Landroid/view/View;)V

    .line 4704
    :cond_0
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/miui/home/launcher/Folder;

    if-eqz v2, :cond_1

    .line 4705
    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    .line 4706
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4707
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 4708
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4709
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/FolderIcon;->loadItemIcons(Z)V

    .line 4712
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

    .line 4854
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cleanUp()V

    .line 4855
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x4

    .line 4856
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 4857
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    return-void
.end method

.method private reportLockWallpaperFail()V
    .locals 3

    .line 3790
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "set_lock_wallpaper_result"

    const/4 v2, 0x0

    .line 3791
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3792
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private requestGlobalFoldersPreinstallAd()V
    .locals 3

    .line 3651
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

    .line 3652
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    .line 3653
    instance-of v2, v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    if-eqz v2, :cond_0

    .line 3654
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

    .line 7297
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 7300
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7301
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 7304
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 7305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 7306
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p2}, Lcom/miui/home/launcher/DragController;->isAppDragging(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7307
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    return-void

    :cond_3
    return-void
.end method

.method private resetScreenContent()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1945
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 1946
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 1947
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    const/4 v0, 0x3

    .line 1948
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

    invoke-static {v0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$EHNhtoDASgO7f_LEnxDNOjkuOIA;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$EHNhtoDASgO7f_LEnxDNOjkuOIA;

    .line 1949
    invoke-interface {v0, v1}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

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

    .line 6094
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 6097
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 6098
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

    .line 6099
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 6100
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6101
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 6103
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

    .line 6104
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

    .line 6109
    iget v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 6110
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {p0, v2, v5, v3, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6111
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->clearRestore()V

    .line 6112
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 6113
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    if-eqz v2, :cond_1

    .line 6114
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

    .line 4058
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(%.1f,%.1f)"

    const/4 v1, 0x2

    .line 4059
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

    .line 4060
    new-array v1, v1, [Ljava/lang/Object;

    .line 4061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4060
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V

    .line 4062
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 4063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const-string p1, "Launcher_dispatchTouchEvent"

    .line 4064
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->printAndClearMessage(Ljava/lang/String;)V

    const-string p1, "Launcher_Scrollto"

    .line 4065
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->printAndClearMessage(Ljava/lang/String;)V

    const-string p1, ""

    .line 4066
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 4452
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sceneOptionItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2703
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    .line 2704
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 2716
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->hideSceneScreen(Z)V

    return v1

    .line 2713
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reset()V

    return v1

    .line 2706
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2707
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditMode()V

    goto :goto_0

    .line 2709
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

    .line 6221
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6222
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6223
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_1

    .line 6224
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 6225
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

    .line 993
    :try_start_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needHideMinusScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 994
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 995
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

    .line 998
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 999
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eq v1, v2, :cond_1

    .line 1000
    const-class v1, Landroid/graphics/Canvas;

    const-string v2, "setCompatibilityVersion"

    const-class v3, Ljava/lang/Void;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1001
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 1000
    invoke-static {v1, v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "setCompatibilityVersionIfNeed"

    .line 1005
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private setErrorBarBackground()V
    .locals 2

    .line 1040
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800b6

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
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

    .line 3890
    invoke-static {p0, v1}, Lcom/miui/launcher/utils/PortableUtils;->getCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3891
    new-instance v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;

    invoke-direct {v3}, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;-><init>()V

    const/4 v4, 0x1

    .line 3892
    iput v4, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->mode:I

    .line 3893
    invoke-static {v2}, Lcom/miui/home/launcher/common/JsonUtils;->getWallpaperInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    move-result-object v2

    iput-object v2, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->currentWallpaperInfo:Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    .line 3894
    iput-boolean p4, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->needLast:Z

    .line 3895
    invoke-static {v3}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonStringFromRequestInfo(Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;)Ljava/lang/String;

    move-result-object p4

    .line 3896
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "force_refresh"

    .line 3897
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "extra_current_provider"

    .line 3898
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "request_json"

    .line 3899
    invoke-virtual {v2, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3901
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

    .line 3904
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

    .line 3907
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3910
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 3911
    invoke-static {p2}, Lcom/miui/home/launcher/common/JsonUtils;->getResultInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 3915
    :cond_2
    iget-object p1, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->wallpaperInfos:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 3916
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_3

    goto :goto_1

    .line 3919
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    .line 3920
    iget-object p2, p1, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;->wallpaperUri:Ljava/lang/String;

    .line 3921
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v0

    .line 3924
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 3925
    invoke-static {p1}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonObjectFromWallpaperInfo(Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3926
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

    .line 3928
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3929
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    return v0

    .line 3932
    :cond_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p1, ""

    .line 3933
    invoke-static {p0, p1, v1}, Lcom/miui/launcher/utils/PortableUtils;->updateCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3935
    :goto_2
    invoke-static {p2, v4}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaper(Landroid/net/Uri;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3937
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private setScreenContentAlpha(F)V
    .locals 1

    .line 1931
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->setAlpha(F)V

    .line 1932
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBar;->setAlpha(F)V

    .line 1933
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setAlpha(F)V

    return-void
.end method

.method private setupAnimations()V
    .locals 3

    const v0, 0x7f010026

    .line 1815
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    .line 1816
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/common/CubicEaseInOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/CubicEaseInOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const v0, 0x7f010027

    .line 1817
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    const v0, 0x7f010020

    .line 1818
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    .line 1819
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1820
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewEnterAnim:Landroid/view/animation/Animation;

    const v0, 0x7f010021

    .line 1821
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    .line 1822
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/Launcher$8;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$8;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1838
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$9;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$9;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    .line 1855
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$wxVVRcASGcrSrOYeB8mgDcRyAQE;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$wxVVRcASGcrSrOYeB8mgDcRyAQE;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1868
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    .line 1869
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1870
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1871
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1872
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$10;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$10;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1883
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$11;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$11;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1893
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$oQp6NMjnyK_DA-uy4MAy0awe8CM;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$oQp6NMjnyK_DA-uy4MAy0awe8CM;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1894
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$8fxjfdpJa1wlHPvgpSbLjGDnOe0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$8fxjfdpJa1wlHPvgpSbLjGDnOe0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1895
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$12;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$12;-><init>(Lcom/miui/home/launcher/Launcher;)V

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

    const v0, 0x7f0a0149

    .line 1731
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    .line 1732
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/RecentsContainer;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    const v0, 0x7f0a0105

    .line 1733
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/OverviewBackground;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewBackground:Lcom/miui/home/recents/views/OverviewBackground;

    .line 1734
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewBackground:Lcom/miui/home/recents/views/OverviewBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/OverviewBackground;->setVisibility(I)V

    .line 1735
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    return-void
.end method

.method private setupViews()V
    .locals 3

    .line 1621
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a0099

    .line 1623
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragLayer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v0, 0x7f0a009a

    .line 1624
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Background;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    .line 1625
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1626
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1627
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragLayer;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    const v0, 0x7f0a0161

    .line 1629
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/search/SearchEdgeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    const v0, 0x7f0a0162

    .line 1630
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FitSystemWindowView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const v0, 0x7f0a01f7

    .line 1631
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    .line 1632
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setDragController(Lcom/miui/home/launcher/DragController;)V

    const v0, 0x7f0a00b2

    .line 1634
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    .line 1635
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1636
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a00b7

    .line 1638
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ErrorBar;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    .line 1639
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ErrorBar;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1640
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setErrorBarBackground()V

    .line 1641
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1643
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Workspace;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1644
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1645
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1647
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a0200

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    .line 1648
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1649
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1650
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a008a

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    .line 1651
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1653
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1654
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1655
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1656
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    .line 1657
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setResource(Lcom/miui/home/launcher/Workspace;)V

    .line 1658
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setResource(Lcom/miui/home/launcher/Workspace;)V

    .line 1660
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DropTargetBar;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 1661
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v1, 0x7f0a00c6

    .line 1663
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderCling;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 1664
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/FolderCling;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1665
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderCling;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1666
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1668
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a016b

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/SearchBar;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    .line 1669
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a00dd

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/HotSeats;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    .line 1670
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/HotSeats;->setLaucher(Lcom/miui/home/launcher/Launcher;)V

    .line 1671
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/HotSeats;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1672
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1674
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    .line 1675
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setScrollView(Landroid/view/View;)V

    .line 1676
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 1677
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 1678
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 1679
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V

    .line 1680
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V

    .line 1681
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    .line 1683
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1684
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1685
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1686
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DropTargetBar;->setup(Lcom/miui/home/launcher/DragController;)V

    .line 1688
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupAnimations()V

    .line 1689
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a0089

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const v0, 0x7f0a018f

    .line 1690
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutMenuLayer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    .line 1691
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 1692
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    const v0, 0x7f0a012b

    .line 1693
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/MinusOneScreenView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    const v0, 0x7f0a00af

    .line 1695
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    .line 1696
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->setTopMenu(Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;)V

    .line 1697
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a012a

    .line 1698
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    .line 1699
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1700
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1703
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    .line 1704
    new-instance v0, Lcom/miui/home/launcher/Launcher$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$6;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    const v0, 0x7f0a0163

    .line 1711
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/ScrimView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    const v0, 0x7f0a0055

    .line 1712
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 1713
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const v1, 0x7f0a0172

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->initialize(Lcom/miui/home/launcher/ExtendedEditText;)V

    .line 1714
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    .line 1715
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setupViews(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V

    .line 1716
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    .line 1717
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->setupViews()V

    .line 1718
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    const v1, 0x7f0a0113

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->setupView(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    .line 1720
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1721
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupRecentsViews()V

    .line 1724
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1725
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    .line 1726
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    :cond_2
    return-void
.end method

.method private showBottomAreaEditPanelIfNeed(Landroid/view/View;Z)V
    .locals 2

    .line 5214
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

    .line 5215
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-eqz p2, :cond_2

    const/4 v1, 0x4

    .line 5216
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5218
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private showEditPanel(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5203
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setEnterEditingMode()V

    goto :goto_0

    .line 5205
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setExitEditingMode()V

    .line 5207
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5208
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->showBottomAreaEditPanelIfNeed(Landroid/view/View;Z)V

    .line 5209
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->showBottomAreaEditPanelIfNeed(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private showSceneScreenCore(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 3

    const/4 v0, 0x1

    .line 4759
    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sEnteredSceneScreen:Z

    .line 4760
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4762
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/DragController;->addDropTarget(ILcom/miui/home/launcher/DropTarget;)V

    .line 4763
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onShowAnimationStart()V

    .line 4764
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setTranslationY(F)V

    .line 4765
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/Launcher$47;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$47;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showUpsideEnterOrExitTipIfNeed(Z)Z
    .locals 8

    .line 6150
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 6155
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-string v3, "pref_freestyle_last_modified_time"

    const-wide/16 v4, 0x0

    .line 6156
    invoke-static {p0, v3, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    const-string v3, "pref_is_shown_upside_enter_tip"

    .line 6158
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "pref_is_shown_upside_exit_tip"

    .line 6159
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "pref_freestyle_last_modified_time"

    .line 6160
    invoke-static {p0, v3, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "pref_is_shown_upside_enter_tip"

    goto :goto_0

    :cond_2
    const-string v0, "pref_is_shown_upside_exit_tip"

    .line 6165
    :goto_0
    invoke-static {p0, v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 6166
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

    const p1, 0x7f100115

    goto :goto_2

    :cond_5
    const p1, 0x7f100116

    .line 6172
    :goto_2
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v4, -0x56000000

    .line 6173
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6175
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6176
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6178
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6, v6}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;II)V

    .line 6179
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x31

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 6181
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6182
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

    .line 6183
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6185
    invoke-direct {p0, v2, p1, v4}, Lcom/miui/home/launcher/Launcher;->showUserGuideInner(IILandroid/view/View;)Lmiui/widget/ArrowPopupWindow;

    move-result-object p1

    .line 6187
    new-instance v1, Lcom/miui/home/launcher/Launcher$60;

    invoke-direct {v1, p0, v3}, Lcom/miui/home/launcher/Launcher$60;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v1}, Lmiui/widget/ArrowPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, 0x1

    .line 6194
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return p1

    :cond_6
    :goto_3
    return v2
.end method

.method private showUserGuideInner(IILandroid/view/View;)Lmiui/widget/ArrowPopupWindow;
    .locals 3

    .line 6199
    new-instance v0, Lmiui/widget/ArrowPopupWindow;

    invoke-direct {v0, p0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;)V

    .line 6200
    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setArrowMode(I)V

    .line 6201
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6202
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

    .line 6203
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 6204
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 6205
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 6206
    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 6207
    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    const/4 p1, 0x0

    .line 6208
    invoke-virtual {v0, p3, p1, p1}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-object v0
.end method

.method private showUserPresentAnimation(Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;)V
    .locals 6

    .line 6274
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPersentAnimationPrepairedId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 6275
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 6276
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v4, p0, Lcom/miui/home/launcher/Launcher;->mUserPersentAnimationPrepairedId:J

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 6277
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->getShowConsumer()Ljava8/util/function/Consumer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->operateAllPresentAnimationRelatedViews(Ljava8/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 6278
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mUserPersentAnimationPrepairedId:J

    .line 6279
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherLifecycleLog;->showUserPresentAnimation()V

    :cond_0
    return-void
.end method

.method private startAndBindService()V
    .locals 1

    .line 8020
    new-instance v0, Lcom/miui/home/launcher/Launcher$80;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$80;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startLockWallpaperPreviewActivity(J)V
    .locals 3

    .line 3703
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3706
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$42;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$42;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    .line 3786
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher$42;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private startMiPay()V
    .locals 6

    .line 2343
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    goto :goto_0

    .line 2347
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    sub-long/2addr v0, v4

    .line 2348
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 2350
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    .line 2352
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_double_home_availability"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.tsmclient"

    .line 2354
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "event_source"

    const-string v2, "com_miui_home"

    .line 2355
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2356
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "startMiPay"

    .line 2359
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2363
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

    .line 697
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 698
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

    .line 5072
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 5075
    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeThumbnailView;->hide()V

    :cond_1
    if-eqz p1, :cond_2

    .line 5079
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->prepareToShow()V

    .line 5080
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->show()V

    .line 5083
    :cond_2
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    return-void
.end method

.method private tellAllFoldersWhenAppAdded(Ljava/lang/String;)V
    .locals 3

    .line 7461
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

    .line 7462
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onAppAdded(Ljava/lang/String;)V

    .line 7463
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onAppAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transIcon(FIIZ)V
    .locals 4

    .line 7837
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    if-eqz v0, :cond_0

    .line 7838
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconImageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    .line 7839
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

    .line 7840
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

    .line 7842
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

    .line 7843
    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 7844
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    div-float/2addr p2, p1

    invoke-interface {v0, p2}, Lcom/miui/home/launcher/IBackAnimView;->setTranslationX(F)V

    .line 7845
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    div-float/2addr p3, p1

    invoke-interface {p2, p3}, Lcom/miui/home/launcher/IBackAnimView;->setTranslationY(F)V

    if-eqz p4, :cond_0

    .line 7846
    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    if-nez p1, :cond_0

    .line 7847
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    const-string p2, "back_home_finish"

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/IBackAnimView;->updateBackAnim(Ljava/lang/String;)V

    .line 7848
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    :cond_0
    return-void
.end method

.method private tryToAddSourceBounds(Landroid/content/Intent;Landroid/view/View;)V
    .locals 6

    if-eqz p2, :cond_1

    .line 4376
    instance-of v0, p2, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 4377
    check-cast p2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p2

    .line 4379
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4380
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v1, v1, v2

    .line 4381
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    aget v2, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4380
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 2

    .line 4161
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

    .line 4162
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->unbind()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private uninstallCleanButton()V
    .locals 2

    .line 6727
    new-instance v0, Lcom/miui/home/launcher/Launcher$62;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$62;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 6734
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private uninstallPowerCleanButton()V
    .locals 2

    .line 6738
    new-instance v0, Lcom/miui/home/launcher/Launcher$63;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$63;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 6745
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 3157
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3158
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3159
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3160
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3161
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3162
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3163
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3164
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3165
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3166
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3167
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3168
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3169
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3170
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3171
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3172
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3174
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3177
    :catch_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 3178
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    .line 3179
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    .line 3181
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterSearchBarObserver()V

    .line 3182
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3183
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3185
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3186
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3187
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->unregisterAnimDurationRatioObserver(Landroid/content/ContentResolver;)V

    .line 3189
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3190
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3191
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3193
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterSearchBarObserver()V
    .locals 2

    .line 3213
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3214
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3215
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private updateAllAppWidgetOptions()V
    .locals 4

    .line 8144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8145
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

    .line 8146
    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_0

    .line 8147
    iget-object v2, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAppsView()V
    .locals 3

    .line 5801
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

    .line 5802
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

    .line 3415
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->getBooleanValueFromMiuiSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpen:Z

    return-void
.end method

.method private updateShortcut(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "Launcher"

    const-string v0, "The intent is null. Failed to update shortcut."

    .line 6696
    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 6699
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    const-string p1, "Launcher"

    const-string v0, "The extra shortcut intent is null. Failed to update shortcut."

    .line 6701
    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6704
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    const/4 v2, 0x0

    .line 6705
    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithIntent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6706
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 6709
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6710
    invoke-virtual {v1, p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->updateNormalShortcut(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "Launcher"

    const-string v0, "Can\'t find shortcutInfo. Failed to update shortcut."

    .line 6707
    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private updateTitleTip(Ljava/util/Collection;Ljava8/util/function/Consumer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            "Ljava8/util/function/Consumer<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3328
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

    .line 3329
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3330
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3331
    :cond_1
    invoke-interface {p2, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private waitForAllIconsFinishLoading()V
    .locals 4

    .line 5588
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$54;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$54;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    .line 5601
    invoke-virtual {v2}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->getWaitTime()J

    move-result-wide v2

    .line 5588
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 4

    const/4 v0, 0x0

    .line 1116
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

    .line 1117
    :try_start_1
    iget-object v0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1118
    iget v0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1119
    iget p1, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1120
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1136
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

    .line 1125
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 1136
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

    .line 1139
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

    .line 2827
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2830
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

    .line 2834
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    .line 2835
    iget v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    .line 2836
    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    iput-wide v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    .line 2838
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->addAppWidgetWithoutFindPlaceAgain(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I

    move-result p1

    return p1
.end method

.method public addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 13

    .line 5414
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5415
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->addRestoreAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void

    .line 5418
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "Launcher"

    .line 5420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindAppWidget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5424
    iget v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 5425
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p1, "Launcher"

    .line 5428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppWidget: appWidgetId has not been bound to a provider yet,ignore it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v5, "Launcher"

    .line 5433
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

    invoke-static {v5, v6}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5437
    :try_start_0
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v5, p0, v3, v4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "com.miui.notes"

    .line 5451
    iget-object v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5452
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.notes.action.REFRESH_WIDGET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.miui.notes"

    .line 5453
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5454
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5457
    :cond_2
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, p0, v4, v5}, Lcom/miui/home/launcher/Launcher;->updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    .line 5458
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5459
    iget-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5461
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    iget v8, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v9, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v10, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v11, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v12, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v12}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 5464
    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 5466
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    const-string v2, "Launcher"

    .line 5469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bound widget id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5470
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5469
    invoke-static {v2, p1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    const-string p1, "Launcher"

    .line 5445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppWidget: server side exception,ignore it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p1, "Launcher"

    .line 5440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppWidget: out of memory,ignore it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addAppWidgetWithoutFindPlaceAgain(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I
    .locals 7

    .line 2843
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2844
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 2845
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2847
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    .line 2849
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p1

    const/4 v1, -0x1

    .line 2851
    :try_start_0
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v3, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2857
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    const-string v1, "Launcher"

    .line 2858
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

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    .line 2860
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 2863
    :cond_1
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2864
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2866
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.DEFAULT"

    .line 2867
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "appWidgetId"

    .line 2868
    invoke-virtual {v5, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 2872
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    .line 2875
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 2876
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x5

    .line 2879
    invoke-virtual {p0, v0, v1, v5}, Lcom/miui/home/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return p1

    .line 2853
    :catch_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    const v0, 0x7f100106

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    return v1
.end method

.method public addContactShortcutToQuickCallCellLayout(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;
    .locals 11

    .line 6421
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->canAddShortcutToQuickCallCellLayout()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->OVERFLOW:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-object p1

    .line 6423
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

    .line 6424
    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    .line 6425
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    .line 6426
    sget-object p1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-object p1
.end method

.method addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;
    .locals 9

    .line 2969
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 2971
    iget-wide v0, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2972
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f0d003c

    .line 2974
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    const-wide/16 v3, -0x64

    .line 2975
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 2976
    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move v8, p3

    .line 2975
    invoke-static/range {v1 .. v8}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    const-string v1, "Launcher"

    .line 2977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFolderToCurrentScreen, info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 2979
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 2980
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v8

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 2979
    invoke-virtual/range {v2 .. v8}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 2981
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava8/util/function/Predicate;)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            "Z",
            "Ljava8/util/function/Predicate<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 2902
    invoke-static {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return-object v10

    :cond_0
    if-eqz p3, :cond_1

    .line 2904
    invoke-interface {p3, v9}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    return-object v10

    :cond_1
    if-eqz p2, :cond_2

    .line 2907
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2909
    :cond_2
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onAdded()V

    .line 2910
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 2911
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    iget v6, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iget v7, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 2913
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 2914
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2916
    iget-wide p2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_3

    .line 2917
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 2918
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 2920
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2921
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    .line 2923
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetProvider()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 2926
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetId()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    .line 2927
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2928
    :cond_5
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p3

    .line 2929
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setMtzMockWidgetId(I)V

    .line 2931
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

    .line 6351
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method addItem(Lcom/miui/home/launcher/ItemInfo;ZZZ)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 6355
    instance-of v8, v7, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v8, :cond_0

    .line 6356
    move-object v1, v7

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 6359
    :cond_0
    iget-wide v1, v7, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    const/4 v9, 0x0

    if-nez v1, :cond_1

    .line 6360
    iget-object v1, v0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    iget v3, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v4, 0x1

    move-object/from16 v2, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;IZZZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    .line 6362
    move-object v1, v7

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/Launcher;->addShortcut(Lcom/miui/home/launcher/ShortcutInfo;ZZZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    goto :goto_0

    :cond_2
    move/from16 v3, p3

    .line 6363
    instance-of v1, v7, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_3

    .line 6364
    iget-object v1, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    .line 6365
    iget-object v10, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v12, v7, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v14, v7, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v15, v7, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v11, v1

    move/from16 v20, p3

    invoke-virtual/range {v10 .. v20}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZZZ)V

    goto :goto_0

    :cond_3
    move-object v1, v9

    .line 6368
    :goto_0
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_4

    if-eqz v8, :cond_4

    .line 6369
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6370
    iput-object v9, v0, Lcom/miui/home/launcher/Launcher;->mInstallPresetAppDialog:Landroid/app/ProgressDialog;

    .line 6371
    move-object v2, v7

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v7, v9}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    :cond_4
    return-object v1
.end method

.method public addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 6513
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V
    .locals 9

    const-wide/16 v0, -0x65

    .line 6517
    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, -0x1

    .line 6518
    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 6519
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 p2, -0x1

    .line 6520
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6522
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {p2}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v2

    if-gt p2, v2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    .line 6523
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/HotSeats;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6530
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V

    .line 6531
    iget-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    .line 6532
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    const/4 p2, 0x1

    .line 6534
    invoke-virtual {p0, p1, p2, p2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    if-eqz p4, :cond_4

    .line 6536
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 6525
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

    .line 6528
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

    .line 6413
    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    return-void
.end method

.method public addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p9

    .line 6465
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

    .line 6466
    iput-wide v0, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    move-wide/from16 v0, p2

    .line 6467
    iput-wide v0, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    move/from16 v0, p6

    .line 6468
    iput v0, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    move/from16 v0, p7

    .line 6469
    iput v0, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6470
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 6471
    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v12}, Lcom/miui/home/launcher/Workspace;->isPosValidate(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p8, :cond_3

    .line 6472
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6476
    :cond_0
    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v12, v14}, Lcom/miui/home/launcher/Workspace;->findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6478
    invoke-static/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    return-void

    .line 6480
    :cond_1
    iget-wide v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    return-void

    .line 6483
    :cond_2
    iget v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    iput v2, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 6484
    iget v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    iput v2, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6485
    iget-wide v1, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    iput-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v1, -0x64

    .line 6486
    iput-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 6487
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v1

    iput-boolean v1, v12, Lcom/miui/home/launcher/ItemInfo;->isLandscapePos:Z

    goto :goto_1

    .line 6473
    :cond_3
    :goto_0
    iget-object v0, v11, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6489
    :cond_4
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/miui/home/launcher/DeviceConfig;->correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V

    .line 6490
    iget-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const-string v0, "Launcher"

    .line 6491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItemToWorkspace, add item into db, item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 6492
    iget-object v0, v11, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, v12}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_2

    .line 6493
    :cond_5
    invoke-virtual {v12, v0}, Lcom/miui/home/launcher/ItemInfo;->hasSamePosition(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6494
    iget-wide v2, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v4, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v6, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v7, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    const-string v0, "Launcher"

    .line 6495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItemToWorkspace, move item in db, item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 6497
    :cond_6
    :goto_2
    instance-of v0, v12, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 6498
    move-object v0, v12

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava8/util/function/Predicate;)Landroid/view/View;

    goto :goto_3

    .line 6499
    :cond_7
    instance-of v0, v12, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_8

    .line 6500
    move-object v0, v12

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    .line 6502
    invoke-virtual {p0, v12, v1, v0}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    .line 6504
    :goto_3
    instance-of v0, v13, Lcom/miui/home/launcher/common/ResultRunnable;

    if-eqz v0, :cond_9

    .line 6505
    move-object v0, v13

    check-cast v0, Lcom/miui/home/launcher/common/ResultRunnable;

    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/common/ResultRunnable;->setResult(Ljava/lang/Object;)V

    :cond_9
    if-eqz v13, :cond_a

    .line 6508
    invoke-interface/range {p9 .. p9}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public addMinusOneView()V
    .locals 1

    .line 5670
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    if-nez v0, :cond_0

    .line 5671
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->loadPaView()V

    :cond_0
    return-void
.end method

.method public addOnResumeCallback(Lcom/miui/home/launcher/Launcher$OnResumeCallback;)V
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrRemoveNewHome()V
    .locals 3

    .line 3391
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    return-void

    .line 3394
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3395
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3396
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->createNewHomeView(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/touch/FeedTransController;)V

    goto :goto_0

    .line 3399
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3400
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeNewHomeView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/FeedTransController;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addPreinstallAppToWorkspace(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 2

    .line 7512
    iget v0, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->itemType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    return-void

    .line 7514
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$73;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$73;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addRecommendAppToFolderWithDragAnimation(Landroid/view/View;)Z
    .locals 8

    .line 7487
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 7488
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7490
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7491
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v5

    .line 7492
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

    .line 7500
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7502
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 7503
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 7504
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 7505
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

    .line 5475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add restore widget to workspace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    new-instance v0, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    invoke-direct {v0, p0, p0, p1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    iput-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 5477
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5478
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5479
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5480
    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    iget v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v7, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v8, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v9, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 5482
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 5483
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method addShortcut(Lcom/miui/home/launcher/ShortcutInfo;ZZZ)Lcom/miui/home/launcher/ItemIcon;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6377
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6378
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6379
    instance-of v4, v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v4, :cond_0

    .line 6380
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 6381
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 6382
    iget-object v1, v0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    :cond_0
    const-string v2, "Launcher"

    .line 6384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find user folder of id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_1
    if-eqz p4, :cond_3

    .line 6389
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v4, v1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6391
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6392
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 6393
    invoke-virtual {v2, v4, v5, v5}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    .line 6394
    iget-object v4, v0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    new-instance v5, Lcom/miui/home/launcher/-$$Lambda$Launcher$4BP1a5uyJ-ladN7DSUE8FnrCK_Q;

    invoke-direct {v5, v0, v2, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$4BP1a5uyJ-ladN7DSUE8FnrCK_Q;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ShortcutInfo;)V

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$0vgAUfx3mP3FTJge7FnMv-fDMoA;

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-direct {v2, v0, v1, v14, v15}, Lcom/miui/home/launcher/-$$Lambda$Launcher$0vgAUfx3mP3FTJge7FnMv-fDMoA;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;ZZ)V

    invoke-virtual {v4, v5, v2}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->inflateViewAsync(Ljava8/util/function/Supplier;Ljava8/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    const-string v2, "Launcher"

    .line 6398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addShortcut in impossible screen, skip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v3

    :cond_3
    move/from16 v14, p2

    move/from16 v15, p3

    .line 6402
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 6403
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v7

    .line 6404
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

    .line 7155
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 7156
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rxsl6V0IqddTC86tYmZcJOVM71U;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rxsl6V0IqddTC86tYmZcJOVM71U;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 7157
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 7158
    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez v1, :cond_0

    .line 7159
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$x31mYYTXGXoI-NRWqhUy743rsz0;

    invoke-direct {v1, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$x31mYYTXGXoI-NRWqhUy743rsz0;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/LauncherApplication;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 7162
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 7163
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public alreadyHasGadget(I)Z
    .locals 2

    .line 2939
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

    .line 2940
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

.method public appendWorkspaceTransitionType(I)V
    .locals 1

    .line 5090
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->appendScreenTransitionType(I)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 721
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public autoCategoryAllIcons()V
    .locals 1

    .line 1758
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1759
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoCategoryAllIcons()V

    return-void
.end method

.method public autoFillAllScreens()V
    .locals 1

    .line 1753
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1754
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoFillAllScreens()V

    return-void
.end method

.method public autoFillCurrentScreen()V
    .locals 1

    .line 1748
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1749
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoFillCurrentScreen()V

    return-void
.end method

.method public autoFolder()V
    .locals 13

    .line 7768
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7771
    invoke-direct {p0, v0, v1, v0}, Lcom/miui/home/launcher/Launcher;->dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V

    .line 7772
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->removeAllEmptyFoldersInCurrentScreen()V

    .line 7773
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/Workspace;->findCurrentScreenFirstVacantArea(II)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7775
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    const/4 v4, 0x0

    aget v5, v0, v4

    aget v6, v0, v1

    invoke-virtual {p0, v2, v3, v5, v6}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    .line 7776
    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 7777
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    aget v9, v0, v4

    aget v10, v0, v1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 7778
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/DragController;->autoDrop(Lcom/miui/home/launcher/DropTarget;)V

    :cond_1
    return-void
.end method

.method public autoScrollWorkspace()V
    .locals 1

    .line 5087
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

    .line 5974
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5977
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

    .line 5978
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    .line 5979
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToWorkspace(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v1, "Launcher"

    .line 5980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add item to launcher when bind apps added, info="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5981
    iget-wide v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 5982
    iget v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 5984
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

    .line 5985
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->isInstallToRecommendFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5986
    invoke-static {v1}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->removePackageName(Ljava/lang/String;)V

    const-string v1, "com.miui.home:string/default_folder_title_recommend"

    const/4 v2, 0x0

    .line 5987
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoByTitle(Ljava/lang/String;Z)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5989
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v2

    iput v2, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 5990
    iget-wide v1, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    iput-wide v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    :cond_4
    const-string v1, "Launcher"

    .line 5992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindAddedShortcuts, move item because ironSource, info="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5994
    :cond_5
    iget-wide v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    iget-wide v6, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    iget v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v9, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const/4 v10, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5999
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$h-3k4QExEwZFGGvPX0zIKRw-TMI;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$h-3k4QExEwZFGGvPX0zIKRw-TMI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

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

    .line 8345
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public bindAppInfosRemoved(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    .line 6064
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

    .line 6069
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 6070
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

    .line 6008
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

    .line 7275
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7276
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->resetDragItemIfNeed(Ljava/util/List;Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 7277
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 7278
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/Launcher;->pendingAllItems(Ljava/util/List;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7280
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7281
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->bindAppsRemoved(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 7283
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7284
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindAddedShortcuts(Ljava/util/List;)V

    .line 7285
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindAppsAdded(Ljava/util/List;)V

    .line 7286
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindWidgetsRestored(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 7287
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->pendingAllItems(Ljava/util/List;Z)V

    :cond_2
    if-eqz p3, :cond_3

    .line 7289
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7290
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Launcher;->bindShortcutsChangedOnAppUpdate(Ljava/util/List;)V

    .line 7291
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Launcher;->bindAppsUpdated(Ljava/util/List;)V

    .line 7293
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

    .line 7237
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    .line 7238
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 7241
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$nv0S0QQRDmGdYZot7yJ_IEM74qk;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$nv0S0QQRDmGdYZot7yJ_IEM74qk;-><init>(Ljava/util/ArrayList;)V

    .line 7242
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZyBEMqSf0WJDASITAkcYE0noImA;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZyBEMqSf0WJDASITAkcYE0noImA;-><init>(Ljava/util/List;)V

    .line 7243
    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Stream;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$ra6bf0x6uHtQdC9uAGe1qblH84E;

    invoke-direct {v2, p0, v1, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ra6bf0x6uHtQdC9uAGe1qblH84E;-><init>(Lcom/miui/home/launcher/Launcher;Ljava8/util/function/Supplier;Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    .line 7257
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7258
    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava8/util/stream/Stream;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_YT3wGtleTx0AoYK4M1ALM-dKXk;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$_YT3wGtleTx0AoYK4M1ALM-dKXk;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    .line 7259
    invoke-interface {p2, v0}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

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

    .line 6013
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateApps(Ljava/util/List;)V

    return-void
.end method

.method public bindCategoryAdded()V
    .locals 1

    .line 8350
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryAdded()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 1

    .line 8370
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryNameUpdate()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 1

    .line 8365
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryOrderUpdate()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 1

    .line 8355
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryRemoved()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 1

    .line 8360
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

    .line 6134
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    .line 6135
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 6136
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setTranslationY(F)V

    return-void

    .line 6140
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 6141
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 6142
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    .line 6143
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 6144
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->cacheSceneScreenRef(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 6146
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

    .line 7348
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 7349
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    return-void
.end method

.method public bindItem(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 13

    .line 5394
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 5395
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5397
    :cond_0
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 5398
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    goto :goto_0

    .line 5399
    :cond_1
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->isFolderIdValid(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5400
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 5401
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    .line 5402
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 5403
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 5405
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

    .line 5408
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isPending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5409
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    :cond_3
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

    .line 5320
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->firstLoadScreens(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 5322
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5323
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 5324
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5325
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

    .line 6056
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6057
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6058
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

    .line 6017
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$d1U7JDrzJW3paiIZHjY-Ri4JlEg;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$d1U7JDrzJW3paiIZHjY-Ri4JlEg;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

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

    .line 7330
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 7331
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

    .line 7332
    iget-wide v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 7333
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7335
    iget-wide v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    goto :goto_0

    .line 7339
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeShortcuts(Ljava/util/ArrayList;)V

    .line 7340
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->removeShortcuts(Ljava/util/ArrayList;)V

    .line 7341
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7342
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

    .line 6075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6076
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

    .line 6077
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6078
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6081
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6082
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

    .line 6083
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 6084
    invoke-static {v3, p0}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6085
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6086
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6090
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->restoreWidget(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blurBehindWithAnim(Z)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Background;->showUninstallBgColor(Z)V

    return-void
.end method

.method public canTouchControllerInterceptTouchEvent()Z
    .locals 8

    .line 4540
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    .line 4541
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    .line 4542
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v2

    .line 4543
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v3

    .line 4544
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4545
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

    .line 4546
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4550
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

    .line 4553
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

    .line 4497
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 4498
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 4499
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    return-void
.end method

.method public cancelHomeFeedContainerArrowAnim(Z)V
    .locals 1

    .line 8311
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_0

    .line 8312
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->cancelArrowAnim(Z)V

    :cond_0
    return-void
.end method

.method public cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V
    .locals 1

    const/4 v0, 0x0

    .line 4935
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public changeAlphaScale(FFIIIIZ)V
    .locals 7

    .line 7922
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/miui/home/launcher/Launcher$77;

    move-object v0, p4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/Launcher$77;-><init>(Lcom/miui/home/launcher/Launcher;FFIIZ)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public changeEditingEntryViewToHotseats()V
    .locals 1

    const/4 v0, 0x0

    .line 5067
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    const/4 v0, 0x0

    .line 5068
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    return-void
.end method

.method public changeHotseatsToEditingEntryView()V
    .locals 1

    const/4 v0, 0x1

    .line 5062
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 5063
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    return-void
.end method

.method public changeShortcutMenuLayerAlphaScale(FFIIZ)V
    .locals 2

    .line 7933
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotX:I

    .line 7934
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotY:I

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 7935
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7936
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 7938
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/Launcher;->changeViewByFsGestureState(Landroid/view/View;FF)V

    .line 7939
    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    if-eqz p1, :cond_1

    .line 7940
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/home/launcher/Launcher;->transIcon(FIIZ)V

    :cond_1
    return-void
.end method

.method public changeStatusBarMode()V
    .locals 3

    .line 5192
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    if-eqz v0, :cond_0

    return-void

    .line 5195
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher_WallpaperUtils"

    .line 5196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStatusBarMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5197
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

    .line 7469
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 7470
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const v1, 0x7f100075

    const/16 v2, 0x1f4

    .line 7472
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 7473
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7474
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 7475
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/Launcher$72;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/Launcher$72;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

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

    .line 7783
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 7786
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    .line 7787
    iget-wide v6, v5, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-wide v6, v5, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    goto :goto_2

    .line 7791
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

    .line 7806
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

    .line 6993
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method

.method public clearLastLaunchApp()V
    .locals 1

    const/4 v0, 0x0

    .line 620
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method public closeAllOverLauncherWindow()V
    .locals 2

    .line 2167
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    const/4 v0, 0x0

    .line 2169
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 2170
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 2171
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showTransitionMenu(Z)V

    .line 2172
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "homekey"

    .line 2174
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public closeFolder(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 7609
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 7610
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7611
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7612
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method closeFolder()Z
    .locals 1

    const/4 v0, 0x1

    .line 4493
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    move-result v0

    return v0
.end method

.method public closeFolder(Z)Z
    .locals 4

    .line 4503
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4504
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4505
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4506
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    const-string v2, "action_close_folder"

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4507
    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4508
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->cancelFolderAnimations()V

    const/4 v0, 0x1

    .line 4509
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 4510
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onFolderOpenOrClose()V

    .line 4511
    invoke-static {v1}, Lcom/miui/home/launcher/ShortcutIcon;->setEnableLoadingAnim(Z)V

    .line 4512
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->enableFolderInteractive(Z)V

    .line 4513
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->close(Z)V

    if-eqz p1, :cond_2

    .line 4515
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const v0, 0x3f7d70a4    # 0.99f

    const v2, 0x3e75c28f    # 0.24f

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)V

    .line 4516
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)V

    .line 4517
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    .line 4518
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->fadeInOrOutScreenContentWhenFolderAnimate(Z)V

    goto :goto_0

    .line 4520
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->resetScreenContent()V

    .line 4522
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 4523
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 4524
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/CheckTransferMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/CheckTransferMessage;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    return v1
.end method

.method public completeSelectToggle(I)V
    .locals 1

    .line 2025
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeSelectToggle(I)V

    goto :goto_0

    .line 2028
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcutToggle(I)Landroid/view/View;

    :goto_0
    return-void
.end method

.method public createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 2

    .line 1954
    instance-of v0, p2, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1956
    :cond_0
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    const v0, 0x7f0d0026

    .line 1957
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    goto :goto_1

    .line 1958
    :cond_1
    instance-of v0, p2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_2

    const v0, 0x7f0d003c

    .line 1959
    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x7f0d0034

    .line 1955
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 1962
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1963
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1964
    invoke-static {p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 1965
    invoke-static {p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setDragListener(Landroid/view/View;)V

    :cond_4
    return-object p1
.end method

.method createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 2986
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1
.end method

.method public createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;
    .locals 3

    .line 2990
    new-instance v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 2991
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/home/launcher/FolderInfo;->isLandscapePos:Z

    .line 2992
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2993
    sget-object p5, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p5, p0}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto :goto_0

    .line 2995
    :cond_0
    invoke-virtual {v0, p5, p0}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :goto_0
    const-wide/16 v1, -0x64

    .line 2999
    iput-wide v1, v0, Lcom/miui/home/launcher/FolderInfo;->container:J

    .line 3000
    iput-wide p1, v0, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    .line 3001
    iput p3, v0, Lcom/miui/home/launcher/FolderInfo;->cellX:I

    .line 3002
    iput p4, v0, Lcom/miui/home/launcher/FolderInfo;->cellY:I

    .line 3004
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 3005
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide p2, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
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

    .line 3973
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3974
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/touch/FeedTransController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3977
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2bc

    if-eq v0, v3, :cond_2

    .line 3978
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2bd

    if-eq v0, v3, :cond_2

    .line 3979
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2be

    if-ne v0, v3, :cond_3

    .line 3980
    :cond_2
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    .line 3981
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    if-eqz v0, :cond_3

    .line 3982
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)V

    .line 3986
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_6

    .line 3987
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_5

    const/16 v3, 0x19

    if-eq v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "debug.launcher2.dumpstate"

    .line 3991
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystemProperties(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 3992
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->dumpState()V

    return v2

    :cond_5
    return v2

    .line 3997
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3998
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_7

    goto :goto_0

    :cond_7
    return v2

    .line 4004
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 4033
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v0

    .line 4034
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4040
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4043
    :cond_1
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    const-string v0, ""

    .line 4044
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    .line 4046
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    .line 4047
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4049
    :cond_3
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/library/utils/CPUBooster;->boostTouch(Landroid/view/MotionEvent;)V

    .line 4050
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/common/ILauncherMonitor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 4051
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveMotionEventLog(Landroid/view/MotionEvent;)V

    .line 4052
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    const-string p1, "Launcher"

    .line 4036
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

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 8612
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/BaseActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8613
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8614
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8616
    :cond_0
    invoke-static {p1, p3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8619
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object p1

    .line 8620
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/compat/LauncherCellCount;->dump(Ljava/io/PrintWriter;)V

    .line 8622
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Workspace;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8624
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "Launcher"

    .line 7368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7372
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

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7373
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

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 7374
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->dumpState()V

    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    .line 7375
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableFolderInteractive(Z)V
    .locals 1

    .line 4530
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4531
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->enableInteractive(Z)V

    :cond_0
    return-void
.end method

.method public exitMultiSelectEditModeIfNeed()V
    .locals 2

    .line 7687
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 7688
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 7689
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method public exitTogglesSelectView(Z)V
    .locals 1

    .line 1983
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    if-eqz v0, :cond_1

    .line 1984
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1985
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    .line 1988
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1989
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    :cond_1
    return-void
.end method

.method public fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "Start filling empty cell"

    .line 6329
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 6330
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Launcher"

    const-string v0, "The switch of auto filling empty doesn\'t turn on"

    .line 6331
    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6335
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$61;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$61;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public finishBindingMissingItems()V
    .locals 0

    .line 5530
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkNewInstalledAppsBeStarted()V

    return-void
.end method

.method public finishBindingSavedItems()V
    .locals 11

    .line 5492
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5493
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 5495
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 5496
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5497
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 v0, 0x0

    .line 5500
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 5504
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5505
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReverseComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5506
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

    .line 5508
    iget-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v6, -0x64

    iget v8, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v9, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v10, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto :goto_0

    .line 5511
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5512
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshFolderIcons()V

    return-void
.end method

.method public finishLoading()V
    .locals 7

    .line 5606
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5608
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 5609
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->waitForAllIconsFinishLoading()V

    const-string v1, "home_data_create_time_key"

    const-wide/16 v2, -0x1

    .line 5610
    invoke-static {p0, v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    .line 5611
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.intent.action.LOADING_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.securitycenter"

    .line 5612
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5613
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5615
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.intent.action.LOADING_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5616
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/high16 v2, 0x1000000

    .line 5617
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    const-string v2, "status"

    const-string v3, "finish"

    .line 5619
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launcher_mode"

    .line 5620
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.miui.home.launcher.permission.LOADING_STATUS"

    .line 5621
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5622
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needShowMisplacedTips()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5623
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5625
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->onLoadingFinished()V

    .line 5627
    new-instance v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mFreeStyleExists:Z

    .line 5628
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 5630
    sget-boolean v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-eqz v1, :cond_3

    const-string v1, "jobscheduler"

    .line 5631
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 5632
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/4 v3, 0x1

    new-instance v4, Landroid/content/ComponentName;

    .line 5633
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v3, 0x5265c00

    .line 5634
    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 5635
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 5638
    :cond_3
    new-instance v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;-><init>()V

    .line 5639
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 5640
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 5641
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->checkAndPerformUserPresentAnimationOnFinishLoading(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;)V

    .line 5643
    :cond_4
    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;->getLastStartedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5645
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/Launcher$55;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/Launcher$55;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 5653
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->afterShowUserPresentAnimation()V

    .line 5655
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$EfLzRdbhmAMPwMghoBrMN_esogs;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$EfLzRdbhmAMPwMghoBrMN_esogs;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava8/util/function/Consumer;)V

    const-string v0, "Launcher"

    const-string v2, "show present anim"

    .line 5658
    invoke-static {v0, v2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    .line 5659
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->updatemIncompatibleAppList(Landroid/content/Context;)V

    .line 5660
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->requestCloudSettingsInfo()V

    .line 5661
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$wbHxOp6bdAzl9A5H4GCcT5L8GHI;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$wbHxOp6bdAzl9A5H4GCcT5L8GHI;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava8/util/function/Consumer;)V

    .line 5662
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkInvalidateGadget()V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public forceHideErrorBar()V
    .locals 1

    .line 4861
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    return-void
.end method

.method public forceReload()V
    .locals 2

    .line 688
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->hideAppView()V

    .line 689
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    const/4 v0, 0x1

    .line 690
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 691
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/LauncherModel;->forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 692
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->resetMtzGadgetList()V

    const/4 v0, 0x0

    .line 693
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    return-void
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1

    .line 8541
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;
    .locals 1

    .line 8386
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    return-object v0
.end method

.method public getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
    .locals 1

    .line 8395
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    return-object v0
.end method

.method public getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;
    .locals 1

    .line 8336
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

    .line 7147
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

    .line 7143
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

    .line 7132
    new-instance v0, Lcom/miui/home/launcher/Launcher$70;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$70;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 7138
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7139
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;
    .locals 1

    .line 8530
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;
    .locals 1

    .line 2123
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppWidgetManager()Landroid/appwidget/AppWidgetManager;
    .locals 1

    .line 2127
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

    .line 8340
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;
    .locals 1

    .line 8332
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    return-object v0
.end method

.method public getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 6989
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0
.end method

.method public getContactsColorizedPortraitController()Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;
    .locals 1

    .line 7151
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mContactsColorizedPortraitController:Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    return-object v0
.end method

.method public getCurrentDisplayRotation()I
    .locals 1

    .line 1488
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return v0
.end method

.method public getCurrentLightSpeedIconPackageName()Ljava/lang/String;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentOpenedFolder()Landroid/view/View;
    .locals 1

    .line 4573
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4574
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    return-object v0
.end method

.method public getDragController()Lcom/miui/home/launcher/DragController;
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/miui/home/launcher/DragLayer;
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object v0
.end method

.method public getDragLayerBackground()Lcom/miui/home/launcher/Background;
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    return-object v0
.end method

.method public getDragSourceForCancelUninstall(Landroid/view/View;)Lcom/miui/home/launcher/DragSource;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 4684
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_3

    .line 4685
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4686
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4688
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInWorkspace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4689
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    return-object p1

    .line 4690
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4691
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1

    .line 4692
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInHotseat()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4693
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getDrawerHeaderElevationController()Lcom/miui/home/launcher/allapps/category/HeaderElevationController;
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    return-object v0
.end method

.method public getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;
    .locals 1

    .line 5240
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    return-object v0
.end method

.method public getEditingState()I
    .locals 1

    .line 4899
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

    .line 644
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

.method public getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;
    .locals 1

    .line 8292
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    return-object v0
.end method

.method public getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 7056
    new-instance v0, Lcom/miui/home/launcher/Launcher$67;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$67;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Z)V

    .line 7073
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7074
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p1
.end method

.method public getFolderCling()Lcom/miui/home/launcher/FolderCling;
    .locals 1

    .line 1168
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object v0
.end method

.method public getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 6316
    :cond_0
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 6317
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    return-object p1

    .line 6318
    :cond_1
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 6319
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

    .line 7447
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

    .line 7452
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

    .line 7453
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

    .line 7443
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    return-object v0
.end method

.method public getFsGestureCallbackSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    .locals 1

    .line 7945
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7946
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7947
    new-instance p2, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public getHomeDataCreateTime()J
    .locals 2

    .line 4903
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    return-wide v0
.end method

.method public getHotSeats()Lcom/miui/home/launcher/HotSeats;
    .locals 1

    .line 5236
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    return-object v0
.end method

.method public getLastLaunchApp()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 3

    const-string v0, "Launcher"

    .line 638
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

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public getLastMotionEventLocation()Ljava/lang/String;
    .locals 1

    .line 4071
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;
    .locals 1

    .line 3369
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    return-object v0
.end method

.method public getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 1

    .line 8390
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

    .line 6581
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6584
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6585
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6586
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 6587
    invoke-virtual {v0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p2

    .line 6582
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "packageName must not null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLoadingAsyncInflateManager()Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;
    .locals 1

    .line 5584
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

    .line 7078
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 7081
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7082
    new-instance p1, Lcom/miui/home/launcher/Launcher$68;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/Launcher$68;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    .line 7099
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7100
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

    .line 5184
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

    .line 7553
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    return-object v0
.end method

.method public getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;
    .locals 1

    .line 8304
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_0

    .line 8305
    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverLayoutProgress()F
    .locals 1

    .line 8111
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    return v0
.end method

.method public getOverviewBackground()Lcom/miui/home/recents/views/OverviewBackground;
    .locals 1

    .line 8497
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewBackground:Lcom/miui/home/recents/views/OverviewBackground;

    return-object v0
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

    .line 8476
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    return-object v0
.end method

.method public getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 0

    .line 6325
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1
.end method

.method public getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;
    .locals 4

    .line 6305
    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 6307
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

    .line 8492
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    return-object v0
.end method

.method public getRecentsView()Lcom/miui/home/recents/views/RecentsView;
    .locals 1

    .line 8480
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 8515
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    return-object v0
.end method

.method public getRootViewRect()Landroid/graphics/Rect;
    .locals 5

    .line 8519
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8520
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 8521
    new-array v0, v0, [I

    .line 8522
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8523
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

    .line 8524
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

    .line 947
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    return-object v0
.end method

.method public getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;
    .locals 1

    .line 4729
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

    .line 4733
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

    .line 4734
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getScreen()Landroid/widget/FrameLayout;
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object v0
.end method

.method public getScreenContent()Landroid/widget/FrameLayout;
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    return-object v0
.end method

.method public getScrimView()Lcom/miui/home/launcher/view/ScrimView;
    .locals 1

    .line 8420
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    return-object v0
.end method

.method public getSearchBar()Lcom/miui/home/launcher/SearchBar;
    .locals 1

    .line 8320
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    return-object v0
.end method

.method public getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;
    .locals 1

    .line 8324
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    return-object v0
.end method

.method public getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;
    .locals 1

    .line 5244
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object v0
.end method

.method public getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;
    .locals 1

    .line 727
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

    .line 7104
    array-length v0, p3

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7108
    new-instance p3, Lcom/miui/home/launcher/Launcher$69;

    invoke-direct {p3, p0, p2, v0, p1}, Lcom/miui/home/launcher/Launcher$69;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/util/ArrayList;Landroid/content/ComponentName;)V

    .line 7127
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7128
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

    .line 6560
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6561
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$zD5PYKnlVDkGJxnhD_98IhLBjsM;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$zD5PYKnlVDkGJxnhD_98IhLBjsM;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;
    .locals 1

    .line 7549
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    return-object v0
.end method

.method public getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2

    .line 6997
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onLauncherComeBackFromOtherApp(Ljava/lang/String;)V

    .line 6998
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ILandroid/graphics/Rect;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 7044
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x1f4

    const/4 p3, 0x0

    .line 7046
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p2, "Launcher"

    .line 7047
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get showing item success"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, p3

    :goto_0
    const-string p3, "Launcher"

    const-string v1, "get showing item error"

    .line 7049
    invoke-static {p3, v1, p2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x1

    .line 7050
    invoke-virtual {v0, p2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :goto_1
    return-object p1
.end method

.method public getShowingShortcutIcon(Ljava/lang/String;I)Lcom/miui/home/launcher/ItemIcon;
    .locals 8

    .line 6786
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

    .line 6787
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 6790
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->getComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6791
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 6793
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6794
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 6797
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x3

    .line 6801
    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/16 v4, 0xe

    .line 6802
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    .line 6801
    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6803
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    .line 6804
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v6, ""

    invoke-direct {v2, p1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Integer;

    .line 6805
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    .line 6804
    invoke-virtual {p0, v2, p2, p1}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    .line 6808
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_5

    goto :goto_0

    .line 6813
    :cond_5
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->getLastLaunchShortcutIcon(Ljava/util/List;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_1

    .line 6809
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_7

    .line 6810
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLastLaunchApp()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_8

    return-object v1

    .line 6818
    :cond_8
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result p2

    if-nez p2, :cond_c

    .line 6819
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 6820
    iget-wide p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 6821
    iget-wide v2, p1, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_9

    .line 6822
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v1

    .line 6825
    :cond_a
    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long p2, v2, v4

    if-nez p2, :cond_b

    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_b

    .line 6826
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 6827
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

    .line 6828
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 6830
    :cond_c
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_d

    .line 6831
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

    .line 925
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    return-object v0
.end method

.method public getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;
    .locals 1

    .line 8568
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    return-object v0
.end method

.method public getSpringLayerWaveController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;
    .locals 1

    .line 8564
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    return-object v0
.end method

.method public getStateManager()Lcom/miui/home/launcher/LauncherStateManager;
    .locals 1

    .line 8296
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    return-object v0
.end method

.method public getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;
    .locals 2

    .line 8413
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    if-nez v0, :cond_0

    .line 8414
    new-instance v0, Lcom/miui/home/launcher/util/SystemUiController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/SystemUiController;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    .line 8416
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    return-object v0
.end method

.method public getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;
    .locals 1

    .line 7557
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    return-object v0
.end method

.method public getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUninstallController:Lcom/miui/home/launcher/uninstall/UninstallController;

    return-object v0
.end method

.method public getUserUnlockController()Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;
    .locals 1

    .line 939
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

    .line 8463
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    return-object v0
.end method

.method public getWorkspace()Lcom/miui/home/launcher/Workspace;
    .locals 1

    .line 5228
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object v0
.end method

.method public getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;
    .locals 1

    .line 5232
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-object v0
.end method

.method public getWorkspacePreviousTransitionType()I
    .locals 1

    .line 5098
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getPreviousScreenTransitionType()I

    move-result v0

    return v0
.end method

.method public getmHomeFeedContainer()Lcom/miui/home/launcher/view/HomeFeedContainer;
    .locals 1

    .line 8316
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    return-object v0
.end method

.method public hasLaunchedAppsFromFolder()Z
    .locals 1

    .line 4565
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    return v0
.end method

.method public hasMoved()Z
    .locals 1

    .line 6851
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

    .line 8484
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    if-eqz v0, :cond_0

    .line 8485
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha(F)V

    .line 8486
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const-string v0, "Launcher"

    const-string v1, "hideLandscapeShortcutMenuLayer"

    .line 8487
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public hideSceneScreen(Z)V
    .locals 5

    .line 4823
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4828
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 4829
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 4831
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onHideAnimationStart()V

    const-string v2, "translationY"

    .line 4833
    new-array v3, p1, [F

    .line 4834
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v1

    .line 4833
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4835
    new-instance v3, Lcom/miui/home/launcher/Launcher$50;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/Launcher$50;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4842
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 4844
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const-string v2, "translationY"

    new-array p1, p1, [F

    const/4 v3, 0x0

    aput v3, p1, v1

    invoke-static {v0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 4846
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 4848
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 4849
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    :goto_0
    return-void
.end method

.method public hideShortcutMenuWithoutAnim()V
    .locals 2

    .line 4930
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setWithoutAnimNextHide()V

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 4931
    invoke-virtual {p0, v1, v0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public inMultiSelectMode()Z
    .locals 2

    .line 4167
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4168
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4169
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

    .line 8444
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 8445
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 8446
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 8447
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 8448
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public invalidateWorkspacePreview()V
    .locals 2

    .line 7733
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7734
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7735
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public isActivityLocked()Z
    .locals 1

    .line 2817
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 2818
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

    .line 3420
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpen:Z

    return v0
.end method

.method public isBackCoverChanged()Z
    .locals 1

    .line 3968
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    return v0
.end method

.method public isBackNewHome()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.miui.newhome.base.Settings"

    .line 2180
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isBackNewHome"

    const/4 v3, 0x0

    .line 2181
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2182
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 2183
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 2185
    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isCurrentScreenNeedAlignIconsToTop()Z
    .locals 1

    .line 5224
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

    .line 7740
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    if-eqz v0, :cond_0

    .line 7741
    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    .line 8399
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isDrawerMode()Z
    .locals 1

    .line 8403
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isElderlyManMode()Z
    .locals 1

    .line 8407
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isFolderAnimating()Z
    .locals 1

    .line 4569
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    return v0
.end method

.method public isFolderEditing()Z
    .locals 1

    .line 8471
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->isEditing()Z

    move-result v0

    return v0
.end method

.method public final isFolderIdValid(J)Z
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFolderOpenedBeforeResume()Z
    .locals 1

    .line 4561
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    return v0
.end method

.method public isFolderShowing()Z
    .locals 1

    .line 4536
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    return v0
.end method

.method public isFreeStyleExists()Z
    .locals 1

    .line 4717
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFreeStyleExists:Z

    return v0
.end method

.method public isInDisableEditing()Z
    .locals 2

    .line 4895
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

    .line 4869
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

    .line 4891
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

    .line 4881
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing(I)Z

    move-result v0

    return v0
.end method

.method public isInQuickOrEditingModeExiting()Z
    .locals 2

    .line 4907
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

    .line 4873
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

    .line 8300
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

    .line 7569
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 7572
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

    .line 5173
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v0, :cond_0

    .line 5174
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

    .line 5179
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    .line 5180
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

    .line 5188
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    return v0
.end method

.method public isMultiSelectEnabled()Z
    .locals 2

    .line 4877
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

    .line 8059
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    return v0
.end method

.method public isPreviewShowing()Z
    .locals 1

    .line 4721
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isQuickCallScreenShowing()Z
    .locals 1

    .line 6417
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isQuickCallScreenShowing()Z

    move-result v0

    return v0
.end method

.method public isSceneAnimating()Z
    .locals 1

    .line 4865
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    return v0
.end method

.method public isSceneShowing()Z
    .locals 1

    .line 4725
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

    .line 8328
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

    .line 649
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

    .line 951
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    return v0
.end method

.method public isShowingTransitionEffectDemo()Z
    .locals 1

    .line 5102
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isShowingTransitionEffectDemo()Z

    move-result v0

    return v0
.end method

.method public isTogglesSelectViewShowing()Z
    .locals 1

    .line 1971
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

    .line 2822
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallAnimShowing()Z

    move-result v0

    return v0
.end method

.method public isUninstallDialogShowing()Z
    .locals 1

    .line 2808
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 8055
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    return v0
.end method

.method public isWidgetThumbnailViewShowing()Z
    .locals 1

    .line 7565
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

    .line 8467
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    return v0
.end method

.method public isWorkspaceLoading()Z
    .locals 1

    .line 2804
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .line 2812
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallAnimShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2813
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

    .line 4205
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    .line 4206
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v0, :cond_0

    const-string v0, "launch_from_folder"

    .line 4207
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackLaunchAppAfterBackToHome(Ljava/lang/String;)V

    .line 4209
    :cond_0
    invoke-static {p1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->recordLaunchApplicationEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    .line 4210
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 4211
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4212
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getTopActivityUserId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4213
    invoke-static {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->launchFullScreenFromFreeform(Landroid/content/Context;)V

    return-void

    .line 4216
    :cond_1
    invoke-static {p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->notifyStartActivity(Landroid/content/Intent;)V

    .line 4217
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->launch(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;Landroid/os/Handler;)V

    return-void
.end method

.method public notifyBackGestureStatus()V
    .locals 1

    .line 7379
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7380
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyFsGestureCallbackMiuiAnimationEnd()V
    .locals 0

    .line 7956
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationEnd()V

    return-void
.end method

.method public notifyFsGestureCallbackMiuiAnimationStart()V
    .locals 1

    .line 7951
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->showFsTransAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    .line 7952
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationStart()V

    return-void
.end method

.method public notifyHomeModeFsGestureStart()V
    .locals 2

    .line 7960
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7961
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7962
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeAllOverLauncherWindow()V

    .line 7964
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 7965
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeGestureStart()V

    :cond_1
    return-void
.end method

.method public notifyMiuiAnimationEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 6977
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 6978
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyMiuiAnimationStart()V
    .locals 4

    .line 6952
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    if-eqz v0, :cond_0

    .line 6953
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->cancelIconBackAnimation()V

    return-void

    .line 6956
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$66;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$66;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 6969
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    .line 6972
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6973
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    .line 1206
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 1215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MINUS_SCREEN_ONRESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "reintentdata"

    .line 1216
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "requestCode"

    .line 1217
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "resultCode"

    .line 1218
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1219
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

    .line 1242
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/FolderCling;->onRequestMarketDetail(Landroid/content/Intent;)V

    goto :goto_0

    .line 1225
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100257

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "android.intent.extra.shortcut.NAME"

    .line 1226
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1227
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showTogglesSelectView()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1229
    invoke-virtual {p0, v0, p3}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    goto :goto_0

    .line 1236
    :cond_4
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1233
    :cond_5
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;

    goto :goto_0

    :cond_6
    if-ne p1, v0, :cond_7

    if-nez p2, :cond_7

    if-eqz p3, :cond_7

    const-string v0, "appWidgetId"

    .line 1251
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 1253
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    :cond_7
    :goto_0
    :pswitch_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    if-ne p2, v2, :cond_8

    .line 1257
    invoke-static {p0, p3}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperFromCustom(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_d

    .line 1261
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result p3

    if-nez p3, :cond_9

    return-void

    :cond_9
    if-ne p2, v2, :cond_c

    .line 1263
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

    .line 1264
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 1265
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->setRecommendAppsSwitchOn(Z)V

    goto :goto_1

    .line 1268
    :cond_b
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    goto :goto_2

    .line 1270
    :cond_c
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderCling;->onUserDenyRecommendConnectNetWork()V

    :cond_d
    :goto_2
    const/16 p3, 0x3eb

    if-ne p1, p3, :cond_f

    if-ne p2, v2, :cond_e

    .line 1276
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    goto :goto_3

    .line 1278
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

    .line 8116
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onAttachedToWindow()V

    .line 8117
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8118
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 4077
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    .line 4078
    new-instance v0, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v2, "event_back"

    invoke-direct {v0, v2}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void

    .line 4083
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4084
    instance-of v1, v0, Lcom/miui/home/recents/views/RecentsContainer;

    if-eqz v1, :cond_1

    .line 4085
    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onBackPressed()V

    :cond_1
    return-void

    .line 4090
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

    .line 4091
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    .line 4092
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

    .line 4098
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

    .line 4099
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    return-void

    .line 4103
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->onCancelUninstall()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 4107
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_7

    .line 4108
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    return-void

    .line 4112
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 4113
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    return-void

    .line 4117
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->stepClose()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4118
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v0, :cond_9

    const-string v0, "back_key"

    .line 4119
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCloseFolderAfterBackToHome(Ljava/lang/String;)V

    :cond_9
    return-void

    .line 4124
    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 4128
    :cond_b
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_c

    .line 4129
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    return-void

    .line 4133
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

    .line 4137
    :cond_d
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isTogglesSelectViewShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 4138
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    return-void

    .line 4142
    :cond_e
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 4143
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceHideErrorBar()V

    .line 4144
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v2}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4145
    new-instance v2, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_back"

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 4178
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackCoverChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4182
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4186
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4187
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 4188
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4189
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 4192
    :cond_2
    instance-of v1, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_3

    .line 4193
    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    .line 4194
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderClick(Lcom/miui/home/launcher/FolderInfo;)V

    .line 4195
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->needToCheckIsGameFolder(Landroid/content/Context;Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4196
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$BgP-CD42GmCRiyjvLwp4M_ELnq0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$BgP-CD42GmCRiyjvLwp4M_ELnq0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 4199
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    if-eqz p1, :cond_4

    .line 4200
    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 8187
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8188
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkOrientation()V

    .line 8189
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkDarkMode()V

    .line 8190
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_0

    .line 8191
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RotationHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "Launcher"

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_BIG_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "android:fragments"

    .line 758
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 760
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/LauncherStateManager;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherStateManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    .line 761
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 762
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v1

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 763
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onCreate()V

    .line 764
    new-instance v1, Lcom/miui/launcher/utils/StatusBarClockController;

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/launcher/utils/StatusBarClockController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStatusBarClockController:Lcom/miui/launcher/utils/StatusBarClockController;

    .line 765
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getDesiredHomePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    const-string v1, "Launcher"

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDesiredHomePackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v1, Lcom/miui/home/launcher/LauncherStateManager;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherStateManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    .line 768
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->needStartFallbackHome(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 771
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 772
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 773
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 774
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeCreated(Ljava/lang/String;)V

    .line 776
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 778
    invoke-static {p0}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->inHomeStack(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Launcher"

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new launcher in home stack, old launcher is not, kill old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->finish()V

    goto :goto_0

    :cond_3
    const-string p1, "Launcher"

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kill new one:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->finish()V

    return-void

    .line 787
    :cond_4
    :goto_0
    new-instance v2, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    .line 788
    sget-boolean v2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v2, :cond_5

    .line 789
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 792
    :cond_5
    new-instance v2, Lcom/miui/home/settings/LauncherGestureController;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/LauncherGestureController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    .line 794
    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$B52ejCbsB6ECRoagpMTkZ_1l1bc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$B52ejCbsB6ECRoagpMTkZ_1l1bc;

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$rL76o9axya1VfbvT_YiL9Szcax4;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$rL76o9axya1VfbvT_YiL9Szcax4;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava8/util/function/Consumer;)V

    .line 800
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->resetMultiSelectMonitor()V

    .line 801
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->registerAppTransitionAnimationHelper(Landroid/content/Context;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 802
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 803
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x700

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 v3, 0x100

    .line 808
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 809
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_6

    const/high16 v3, 0x4000000

    .line 811
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 813
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_7

    const/high16 v3, -0x80000000

    .line 814
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 816
    :cond_7
    invoke-static {v2, v1, v1}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->setExtraFlag(Landroid/view/Window;II)V

    .line 818
    invoke-virtual {v2, v1}, Landroid/view/Window;->setFormat(I)V

    .line 819
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->adaptPNotchScreen(Landroid/view/Window;)V

    .line 820
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->doSelfProtect()V

    .line 822
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->initDefaultExecutor()V

    .line 827
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    .line 828
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/LauncherApplication;->setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    .line 830
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/Launcher;->sPrefShowIconShadow:Z

    const/4 v2, 0x0

    .line 832
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 833
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    .line 834
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setRequestedOrientation(I)V

    .line 837
    :cond_8
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->updateApplicationEnableStateIfNeed()V

    .line 839
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerBroadcastReceivers()V

    .line 840
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 841
    new-instance v3, Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v3, v4, p0, v5}, Lcom/miui/home/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;I)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    .line 842
    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$-aKc00t0eh-I5-zZh3k3v_VZqP0;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$-aKc00t0eh-I5-zZh3k3v_VZqP0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    sget-object v4, Lcom/miui/home/launcher/-$$Lambda$Launcher$VzTSkT0gd4Q-hYIZ6XZkmlteftg;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$VzTSkT0gd4Q-hYIZ6XZkmlteftg;

    invoke-static {v3, v4}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava8/util/function/Consumer;)V

    .line 845
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 846
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v3

    if-nez v3, :cond_9

    .line 847
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v3, v4, v1, v5}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    goto :goto_1

    .line 849
    :cond_9
    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$XefkfZ_tY-HSqx5cH3U0gASDyQY;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$XefkfZ_tY-HSqx5cH3U0gASDyQY;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v3, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava8/util/function/Consumer;)V

    .line 853
    :goto_1
    new-instance v3, Lcom/miui/home/launcher/DragController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/DragController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 854
    new-instance v3, Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/touch/FeedTransController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    .line 856
    new-instance v3, Lcom/miui/home/launcher/ShakeMonitor;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ShakeMonitor;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    .line 858
    new-instance v3, Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ApplicationsMessage;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 860
    new-instance v3, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    .line 861
    new-instance v3, Lcom/miui/home/launcher/util/ViewRootImplHook;

    invoke-direct {v3}, Lcom/miui/home/launcher/util/ViewRootImplHook;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    .line 866
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needHideMinusScreen()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 867
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d005d

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    goto :goto_2

    .line 869
    :cond_a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0058

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    .line 871
    :goto_2
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setContentView(Landroid/view/View;)V

    .line 873
    new-instance v3, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    .line 874
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v3}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->registerWallpaperChangedReceiver()V

    .line 875
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupViews()V

    .line 876
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initConflictItems()V

    .line 880
    new-instance v3, Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    invoke-direct {v3}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    .line 881
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v3, :cond_b

    .line 882
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 883
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->setScreenTransitionType(I)I

    .line 887
    :cond_b
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    .line 890
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 891
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 893
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initLauncher()V

    .line 894
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->register(Landroid/content/Context;)V

    .line 895
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsNetworkConnectedAsync()V

    .line 897
    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$zS0h3yPMOmVG821bucWAVOHzfQY;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$zS0h3yPMOmVG821bucWAVOHzfQY;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava8/util/function/Consumer;)V

    .line 902
    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$zcOufciWjXDVJl4J95u31umArz4;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$zcOufciWjXDVJl4J95u31umArz4;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava8/util/function/Consumer;)V

    .line 903
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_c

    .line 904
    invoke-interface {v1, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;)V

    .line 906
    :cond_c
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSystemUIFsgVersion()V

    .line 907
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getSecurityHideItemsAsync()V

    .line 908
    new-instance p1, Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mUninstallController:Lcom/miui/home/launcher/uninstall/UninstallController;

    .line 909
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 910
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 912
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 913
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->newInstance(Landroid/content/Context;)Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    .line 914
    new-instance p1, Lcom/miui/home/recents/util/RotationHelper;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/RotationHelper;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    .line 915
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RotationHelper;->initialize()V

    :cond_d
    const-string p1, "window"

    .line 918
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    .line 919
    new-instance p1, Lcom/miui/home/launcher/sound/SoundPoolHelper;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    .line 920
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initCleanLogWork()V

    .line 921
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

    .line 2661
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2665
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const v0, 0x7f100171

    const/4 v2, 0x2

    .line 2669
    invoke-interface {p1, v2, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f10017b

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 2670
    invoke-interface {p1, v3, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v4, 0x52

    .line 2671
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v4, 0x7f100172

    .line 2672
    invoke-interface {p1, v2, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const/16 v0, 0x58

    .line 2673
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return v3
.end method

.method public onDestroy()V
    .locals 4

    .line 2519
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDestroy()V

    .line 2520
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onDestroy()V

    .line 2521
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    if-eqz v0, :cond_0

    .line 2522
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->unregisterBroadcastReceiver(Landroid/content/Context;)V

    .line 2524
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_1

    return-void

    .line 2527
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    if-eqz v0, :cond_2

    .line 2529
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

    .line 2531
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2534
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_3

    .line 2535
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RotationHelper;->destroy()V

    .line 2538
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2539
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onDestory()V

    .line 2542
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

    .line 2543
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onLauncherDestroy()V

    goto :goto_1

    .line 2545
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->disconnectFsGuestureService()V

    .line 2546
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->unregisterMiuiThumbnailAnimationHelper(Landroid/content/Context;)V

    .line 2547
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 2548
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eq v1, p0, :cond_6

    .line 2549
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 2553
    :cond_6
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 2555
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->onDestroy()V

    .line 2556
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 2558
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->clear()V

    .line 2560
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->onDestroy()V

    .line 2563
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unbindDesktopItems()V

    .line 2565
    new-instance v0, Lcom/miui/home/launcher/Launcher$17;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$17;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 2572
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 2573
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2576
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    if-eqz v0, :cond_8

    .line 2577
    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->unregisterReceiver()V

    .line 2580
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShakeMonitor;->stopMonitorIfNeed()V

    .line 2581
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onDestroy()V

    .line 2582
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->onDestroy()V

    const/4 v0, 0x6

    .line 2583
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 2584
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isChangingConfigurations()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    .line 2586
    invoke-static {}, Lcom/miui/home/launcher/LauncherAnimUtils;->onDestroyActivity()V

    .line 2588
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->resetMtzGadgetList()V

    .line 2590
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->onDestroy()V

    .line 2592
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->unRegister(Landroid/content/Context;)V

    .line 2593
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    if-eqz v0, :cond_9

    .line 2594
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2597
    :cond_9
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    if-eqz v0, :cond_b

    .line 2598
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->resetResourceDependenceItem()V

    .line 2599
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sEnteredSceneScreen:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/miui/home/launcher/SpecificDeviceConfig;->isBigScreenLowMemory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2604
    :cond_a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2607
    :cond_b
    invoke-static {}, Lcom/miui/home/launcher/FolderCling;->clearOldVersionRecommendStaticMemory()V

    .line 2608
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$f8_iSp2cQIDu0TY7Z0tSQ3SJPEw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$f8_iSp2cQIDu0TY7Z0tSQ3SJPEw;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava8/util/function/Consumer;)V

    .line 2613
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    if-eqz v0, :cond_c

    .line 2614
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onDestory()V

    .line 2616
    :cond_c
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/common/messages/DragMessage;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2617
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_d

    .line 2618
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDestroy()V

    .line 2620
    :cond_d
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2621
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDestroy()V

    const/4 v0, 0x0

    .line 2622
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 2623
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showTransitionMenu(Z)V

    .line 2624
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2625
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 2626
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->releaseHook()V

    .line 2627
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    if-eqz v0, :cond_e

    .line 2628
    invoke-virtual {v0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->release()V

    .line 2630
    :cond_e
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2631
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 2633
    :cond_f
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    if-eqz v0, :cond_10

    .line 2634
    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->release()V

    .line 2635
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    .line 2637
    :cond_10
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2638
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->onDestroy(Landroid/content/Context;)V

    :cond_11
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 8124
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDetachedFromWindow()V

    .line 8125
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8126
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7673
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x9

    .line 7676
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x7

    .line 7677
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_1
    return-void
.end method

.method public onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7701
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

    .line 7645
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 7648
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 7651
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7652
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 7653
    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, -0x65

    cmp-long p1, p1, v0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 7654
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    .line 7655
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7656
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7657
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 7659
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 7662
    :cond_3
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 7663
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x11

    .line 7664
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x9

    .line 7666
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

    .line 7683
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method onDropSettingShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2963
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 2964
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2965
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

    .line 2952
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 2953
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->startActivityForCreateShortcut(Landroid/content/Intent;)V

    return-void
.end method

.method onDropToggleShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2957
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 2958
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 2959
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcutToggle(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 8179
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onEnterAnimationComplete()V

    .line 8180
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 8181
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    :cond_0
    return-void
.end method

.method public onFinishHighlightLocatedApp()V
    .locals 1

    const/4 v0, 0x0

    .line 2425
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    return-void
.end method

.method public onFolderOpenOrClose()V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "onFolderOpenOrClose"

    .line 6876
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 6877
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    .line 6878
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1589
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->acceptFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    .line 1591
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1593
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1600
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onSearchRequested()Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1000

    .line 6683
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    .line 6691
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLauncherModeChanged()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 668
    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 669
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 670
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerSearchBarObserver()V

    goto :goto_0

    .line 673
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterSearchBarObserver()V

    .line 675
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 4589
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4592
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackCoverChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4599
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->isViewInFolder(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 4603
    :cond_2
    instance-of v0, p1, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_3

    .line 4604
    check-cast p1, Lcom/miui/home/launcher/CellLayout;

    goto :goto_0

    .line 4606
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_4

    .line 4607
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout;

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 4611
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 4612
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

    .line 4618
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4619
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    .line 4620
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->performFakeLongClick()V

    return v1

    .line 4623
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 4624
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->isIconPositionFixed(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 4627
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4628
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getSelectCount()I

    move-result v3

    if-gt v3, v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 4631
    invoke-direct {p0, p1, v0, v2}, Lcom/miui/home/launcher/Launcher;->dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V

    goto :goto_3

    .line 4629
    :cond_9
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->dragSingleItem(Lcom/miui/home/launcher/CellLayout$CellInfo;Landroid/view/View;)V

    :cond_a
    :goto_3
    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    .line 4009
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 4010
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4011
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 4014
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4015
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4018
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    .line 4019
    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v2, "event_menu"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    goto :goto_0

    .line 4021
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "menu"

    .line 4022
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 4023
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

    .line 6872
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 8242
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8243
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/miui/home/launcher/DeviceConfig;->setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    .line 8244
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->onMultiWindowModeChangedInternal(Z)V

    return-void
.end method

.method public onMultiWindowModeChangedInternal(Z)V
    .locals 1

    .line 8248
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onMultiWindowModeChanged(Z)V

    .line 8249
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    if-eqz v0, :cond_0

    .line 8250
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->onMultiWindowModeChanged(Z)V

    .line 8252
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    if-eqz v0, :cond_1

    .line 8253
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DropTargetBar;->onMultiWindowModeChanged(Z)V

    .line 8255
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8256
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->onMultiWindowModeChanged(Z)V

    .line 8258
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_3

    .line 8259
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RotationHelper;->onMultiWindowModeChanged(Z)V

    .line 8261
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8262
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onMultiWindowModeChanged(Z)V

    .line 8264
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->clearCurrentTaskInfo()V

    .line 8265
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    return-void
.end method

.method public onNewHomeTransProgress(FF)V
    .locals 1

    .line 8549
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    return-void

    .line 8552
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onNewHomeTransProgress(FF)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 2192
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2193
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2194
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startMiPay()V

    .line 2196
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "locate_app"

    .line 2197
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->locateApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2202
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

    .line 2203
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

    .line 2204
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    .line 2208
    :cond_5
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2209
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    .line 2210
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    return-void

    :cond_6
    if-eqz v0, :cond_8

    .line 2213
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onNewIntent()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2214
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    .line 2215
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

    .line 2220
    :cond_9
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2221
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2222
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onNewIntent(Landroid/content/Intent;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 2224
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

    .line 2226
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackNewHome()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz v0, :cond_d

    .line 2227
    :cond_c
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    :cond_d
    return-void

    .line 2230
    :cond_e
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2231
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    invoke-static {p0, p1, v0}, Lcom/miui/home/recents/InternalStateHandler;->handleNewIntent(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Z)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "clickHomeKey"

    .line 2233
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    const p1, 0x7f100025

    .line 2234
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 2235
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    .line 2236
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    :cond_f
    return-void

    .line 2239
    :cond_10
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 2240
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    :cond_11
    const-string v3, "skip_reset_gesture_view_state"

    .line 2244
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2245
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 2248
    :cond_12
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 2250
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    :cond_13
    const-string v3, "android.intent.action.MAIN"

    .line 2253
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2255
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeAllOverLauncherWindow()V

    const-string v3, "filter_flag"

    .line 2274
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2275
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-lez v3, :cond_14

    if-nez v2, :cond_14

    return-void

    .line 2279
    :cond_14
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2280
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onNewIntent(Landroid/content/Intent;)V

    .line 2282
    :cond_15
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isTogglesSelectViewShowing()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2283
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    goto :goto_3

    :cond_16
    if-eqz v0, :cond_17

    .line 2285
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onNewIntentWhenAlreadyOnHome()V

    goto :goto_3

    .line 2286
    :cond_17
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2287
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    .line 2289
    :cond_18
    :goto_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz p1, :cond_19

    .line 2290
    invoke-interface {p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent()V

    .line 2293
    :cond_19
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    return-void
.end method

.method public onNewIntentWhenAlreadyOnHome()V
    .locals 4

    .line 2297
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->onCancelUninstall()Z

    move-result v0

    .line 2302
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2303
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    .line 2305
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2306
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    goto/16 :goto_0

    .line 2307
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    .line 2308
    new-instance v0, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v1, "event_home"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    goto/16 :goto_0

    .line 2311
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2312
    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v3, :cond_5

    .line 2313
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 2314
    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v3, :cond_5

    const-string v3, "home_key"

    .line 2315
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCloseFolderAfterBackToHome(Ljava/lang/String;)V

    .line 2318
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2319
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    :cond_7
    if-eqz v0, :cond_8

    .line 2321
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$13;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$13;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 2325
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 2321
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2327
    :cond_8
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2328
    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_home"

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    goto :goto_0

    :cond_9
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 2332
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2333
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I

    .line 2335
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isDefaultScreenShowing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2336
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 2724
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->sceneOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2727
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 4

    .line 1355
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onPause()V

    .line 1356
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onPause()V

    .line 1357
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onPause()V

    .line 1361
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1362
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onPause()V

    :cond_1
    const/4 v0, 0x1

    .line 1364
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 1365
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    const/4 v1, 0x3

    .line 1366
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1367
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    .line 1368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 1369
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    .line 1374
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/Launcher$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$3;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1380
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1381
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onPause()V

    .line 1383
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1384
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->cancelImprovedToast()V

    .line 1385
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1386
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onPause()V

    return-void
.end method

.method public onPerformGestureStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 2692
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2693
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2694
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isSelectViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2697
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

    .line 6663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6664
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    const/16 v2, 0x1000

    if-nez v1, :cond_0

    .line 6665
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f1000c5

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6668
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 6669
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_1

    .line 6670
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f10002c

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6673
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6674
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f100148

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6677
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/BaseActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onReorganizeStarted()V
    .locals 2

    const/4 v0, 0x7

    .line 5807
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    const/4 v0, 0x1

    .line 5808
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 5809
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5810
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

    .line 4292
    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 4294
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    return-void

    .line 4298
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 8456
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8458
    invoke-virtual {p1}, Landroid/os/BadParcelableException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1285
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onResume()V

    .line 1286
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 1287
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onResume()V

    .line 1288
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->needStartFallbackHome(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$U-ipSzxGPnWZAXH8bOtSv8_uHoM;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$U-ipSzxGPnWZAXH8bOtSv8_uHoM;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1292
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1295
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 1296
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    .line 1297
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1298
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onResume()V

    .line 1300
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->onResume()V

    .line 1301
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    const/4 v1, 0x4

    .line 1302
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1303
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    .line 1304
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->scrollToDefault()V

    .line 1305
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 1306
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    .line 1307
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    .line 1308
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->handleRemainingTasksOnResume(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 1309
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 1310
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1311
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.MINUS_SCREEN_ONRESUME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1314
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1315
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1316
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 1323
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    .line 1324
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsAccessibilityEnabledAsync()V

    .line 1325
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_5

    .line 1326
    invoke-interface {v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onResume()V

    .line 1328
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1329
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->notifyCurrentScreen()V

    .line 1330
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    .line 1331
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->clearLastLaunchApp()V

    .line 1332
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$9a0S3NAug5jIks94-pUbRf1K_kk;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$9a0S3NAug5jIks94-pUbRf1K_kk;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1333
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_6

    .line 1334
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkNewInstalledAppsBeStarted()V

    .line 1336
    :cond_6
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1337
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$cPlTThdr0Wab9Anhfj5nlx8z5b4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$cPlTThdr0Wab9Anhfj5nlx8z5b4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1338
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onResume()V

    .line 1340
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/Launcher$OnResumeCallback;

    .line 1341
    invoke-interface {v1}, Lcom/miui/home/launcher/Launcher$OnResumeCallback;->onLauncherResume()V

    goto :goto_0

    .line 1343
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onScreenCellLocked(Z)V
    .locals 6

    .line 7626
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7627
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7628
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 7630
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7631
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    move v3, v0

    .line 7633
    :goto_1
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 7634
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    .line 7635
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutIcon;

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(Z)V

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

    .line 679
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 680
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 681
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetIconSizeScale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 683
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

    .line 2731
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 2734
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setIsScreenOrientationChanged(Z)V

    .line 2735
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 2736
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setIsScreenOrientationChanged(Z)V

    .line 2737
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 2738
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->onScreenOrientationChanged()V

    .line 2739
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 2740
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->hideAppView()V

    .line 2741
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onScreenOrientationChanged()V

    .line 2742
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onScreenOrientationChanged()V

    .line 2743
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->onScreenOrientationChanged()V

    .line 2744
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onScreenOrientationChanged()V

    .line 2745
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onScreenOrientationChanged()V

    .line 2746
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onScreenOrientationChanged()V

    .line 2747
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->onScreenOrientationChanged()V

    .line 2748
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2749
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2751
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2752
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2753
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Launcher$18;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$18;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2761
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 2762
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2764
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onScreenOrientationChanged()V

    .line 2766
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2767
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    .line 2768
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 2770
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz v0, :cond_4

    .line 2771
    invoke-virtual {v0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    .line 2772
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 2774
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

    .line 2778
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onScreenSizeChanged()V

    .line 2779
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onScreenSizeChanged()V

    .line 2780
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->onScreenSizeChanged()V

    .line 2781
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onScreenSizeChanged()V

    .line 2782
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->onScreenSizeChanged()V

    .line 2783
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 2784
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2786
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onScreenSizeChanged()V

    .line 2787
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onScreenSizeChanged()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .line 2797
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2798
    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    :cond_0
    return v1
.end method

.method public onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7695
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

    .line 1464
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStart()V

    .line 1465
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onStart()V

    .line 1466
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1469
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->onLauncherResume()V

    .line 1470
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1471
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStart()V

    .line 1473
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_2

    .line 1474
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1475
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    :cond_2
    const/4 v0, 0x1

    .line 1478
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1479
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    .line 1480
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_3

    .line 1481
    invoke-interface {v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onStart()V

    .line 1483
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1484
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

    .line 2417
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    .line 2418
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 2419
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onStateSetStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 8605
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8606
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onStateChanged(Lcom/miui/home/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1439
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStop()V

    .line 1440
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onStop()V

    .line 1441
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onStop()V

    .line 1445
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->onLauncherPaused()V

    .line 1446
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onStop()V

    .line 1447
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1448
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStop()V

    .line 1450
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset()V

    const/4 v0, 0x2

    .line 1451
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1452
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1453
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStop()V

    :cond_2
    const/4 v0, 0x0

    .line 1456
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    .line 1457
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1458
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    .line 1459
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 1193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MINUS_SCREEN_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "WALLPAPER_COLOR_MODE"

    .line 1194
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1196
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onWallpaperColorChanged()V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 1200
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onWallpaperColorChanged()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 7412
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onWindowFocusChanged(Z)V

    .line 7413
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onWindowFocusChanged(Z)V

    .line 7414
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 7418
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onWindowFocus()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7419
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    .line 7421
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    if-eqz p1, :cond_2

    .line 7422
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-nez v0, :cond_2

    .line 7423
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startAndBindService()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 7425
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    if-nez v0, :cond_3

    .line 7426
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7427
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 7430
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$6aRJ_n8C5Ae5kHqwgN4Bmu0MLhs;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$6aRJ_n8C5Ae5kHqwgN4Bmu0MLhs;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 7433
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 7434
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    const/4 v1, 0x7

    .line 7435
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 7437
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7438
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    :cond_6
    return-void
.end method

.method public onWorkspaceScroll()V
    .locals 1

    .line 6855
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->needCancelBackAnimationWhenWorkspaceScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6856
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    .line 6858
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6859
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->skipToEnd()V

    :cond_1
    return-void
.end method

.method public openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V
    .locals 1

    .line 4463
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onFolderOpenOrClose()V

    .line 4464
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/Launcher$46;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$46;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

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

    .line 7315
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7317
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 7320
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    goto :goto_1

    .line 7322
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

    .line 3013
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3014
    instance-of v1, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v1, :cond_0

    .line 3015
    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->preRemoveView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public prepareAnimationForUnlock()V
    .locals 2

    .line 6248
    new-instance v0, Lcom/miui/home/launcher/Launcher$CheckedPrepairUserPersentAnimationOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$CheckedPrepairUserPersentAnimationOperation;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->prepairUserPersentAnimation(Ljava8/util/function/Consumer;)V

    .line 6249
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->scheduleTraversal()V

    return-void
.end method

.method public prepareBeforeBindItems()V
    .locals 0

    .line 5300
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->updateGadgetBackup(Landroid/content/Context;)V

    return-void
.end method

.method reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 0

    .line 1047
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1048
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 1049
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1051
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherProvider;->onCreate()Z

    .line 1054
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    return-object p1
.end method

.method public reloadGadget(I)V
    .locals 6

    .line 2885
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2886
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

    .line 2887
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 2888
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2889
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v4, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2891
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2892
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2893
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2894
    invoke-virtual {p0, v2, v1, v3}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava8/util/function/Predicate;)Landroid/view/View;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reloadSearchBarIfNeed()V
    .locals 2

    .line 3474
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBar()Z

    move-result v0

    .line 3475
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 3476
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBar()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3478
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 3479
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSearchBarVisibleChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3480
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 3482
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3483
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onScreenSizeChanged()V

    :cond_1
    return-void
.end method

.method public removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    .line 2111
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 2112
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2113
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    .line 2114
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWidgetRemove(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    if-eqz v0, :cond_1

    .line 2117
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2119
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public removeDeepShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 6642
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6643
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public removeDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 6608
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6609
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->isQuickCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6610
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallCleanButton()V

    return-void

    .line 6612
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->isPowerCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6613
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallPowerCleanButton()V

    return-void

    .line 6616
    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6618
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeDeepShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 6619
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onUninstallShortcut(Ljava/util/List;)V

    goto :goto_0

    .line 6621
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$s4zFazlqQIauqKBesfF0K9JZqgw;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$s4zFazlqQIauqKBesfF0K9JZqgw;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method removeFolder(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 4

    .line 3019
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3020
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3025
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3026
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 3027
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 3028
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    .line 3029
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onFolderDeleted()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Launcher"

    .line 3022
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

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public removeFolder(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3

    .line 3033
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3035
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->removeRecommendAppsViewKey()V

    return-void
.end method

.method public removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 7168
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$h1gFBwS7412smJZ_Idfulu_f05E;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$h1gFBwS7412smJZ_Idfulu_f05E;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 7169
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 7170
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7172
    :cond_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7176
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

    .line 2133
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

    .line 2134
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeProgressIcon(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7180
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

    .line 7187
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7189
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    if-eqz v1, :cond_0

    .line 7191
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 7192
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7193
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->prepareLayoutAnimation()V

    :cond_0
    const-string v1, "Launcher"

    .line 7195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeShortcutIcon, remove icon from folder, info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 7196
    iget-wide v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    .line 7198
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7200
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 7201
    instance-of v2, v1, Lcom/miui/home/launcher/Launcher$IconContainer;

    if-eqz v2, :cond_2

    const-string v2, "Launcher"

    .line 7202
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

    .line 7203
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7202
    invoke-static {v2, v3}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 7204
    check-cast v1, Lcom/miui/home/launcher/Launcher$IconContainer;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/Launcher$IconContainer;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)I

    .line 7207
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7208
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 7211
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 7212
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7213
    iget-wide v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    iget-wide v6, p1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 7214
    invoke-virtual {p1, p0, v3}, Lcom/miui/home/launcher/ShortcutInfo;->onReplaced(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string p2, "Launcher"

    .line 7220
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

    invoke-static {p2, v1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    if-eqz p3, :cond_5

    .line 7223
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7224
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_5
    return-void
.end method

.method public removeWorkspaceTransitionType(I)V
    .locals 1

    .line 5094
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeScreenTransitionType(I)V

    return-void
.end method

.method public resetDragItems()V
    .locals 1

    .line 5960
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onAppsAdded()V

    .line 5961
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 5962
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5964
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->resetTouchCellInfo()V

    :cond_0
    return-void
.end method

.method public safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V
    .locals 3

    .line 4350
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4358
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->makeUnableToStartActivityToast()V

    const-string v0, "Launcher"

    .line 4359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher does not have the permission to launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    const/4 p1, 0x0

    .line 4353
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4354
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->handleActivityNotFound(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4355
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->makeUnableToStartActivityToast()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToDefault()V
    .locals 2

    .line 1390
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1391
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1392
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setCurSelectedIcon(Lcom/miui/home/launcher/IBackAnimView;)V
    .locals 2

    const/4 v0, 0x0

    .line 6896
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 6897
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$65;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$65;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6908
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEditingState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 4922
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 1

    const/4 v0, 0x0

    .line 4926
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 8

    .line 4939
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 4943
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

    .line 5010
    :pswitch_0
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    goto/16 :goto_2

    .line 5007
    :pswitch_1
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1, v5, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    goto/16 :goto_2

    :pswitch_2
    const-string p2, "all"

    .line 4984
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    .line 4985
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p2, v0, :cond_2

    .line 4986
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p2

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v6, p3}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 4988
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    .line 4989
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 4990
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 4991
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    .line 4992
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 4993
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 4994
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1, v4, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    .line 4995
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 4997
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    .line 4998
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v5}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    const p2, 0x7f100069

    .line 4999
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 5000
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 5001
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    goto/16 :goto_2

    .line 4949
    :pswitch_3
    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    .line 4950
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v6}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_4

    .line 4951
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :cond_4
    const/4 v6, 0x0

    .line 4953
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    .line 4954
    iget v6, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq v2, v6, :cond_5

    if-eq v6, v1, :cond_5

    .line 4956
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 4958
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4959
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    .line 4960
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    goto :goto_0

    .line 4961
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ErrorBar;->isShowing()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v6

    if-nez v6, :cond_7

    .line 4963
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 4965
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v6

    if-nez v6, :cond_8

    .line 4966
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    .line 4968
    :cond_8
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 4969
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->addOnStateChangeFinishRunnable(Ljava/lang/Runnable;)V

    .line 4970
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v6, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v6, v2, :cond_9

    move v6, v5

    goto :goto_1

    :cond_9
    move v6, v4

    :goto_1
    invoke-virtual {p2, p1, v6, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    .line 4971
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v4}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    .line 4972
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    .line 4973
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 4974
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result p2

    if-nez p2, :cond_a

    .line 4976
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    .line 4978
    :cond_a
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    .line 4979
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p2, v3, :cond_c

    const p2, 0x7f10006a

    .line 4980
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    goto :goto_2

    .line 5004
    :cond_b
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v6}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showShortcutMenu(Lcom/miui/home/launcher/DragObject;)V

    .line 5014
    :cond_c
    :goto_2
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 5015
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 5016
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p1, v3, :cond_d

    .line 5017
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1, v5}, Lcom/miui/home/launcher/Workspace;->requestDisallowInterceptTouchEvent(Z)V

    .line 5019
    :cond_d
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShakeMonitor;->onEditModeStateChanged()V

    const-string p1, "Launcher"

    const-string v3, "edit state changed from %s to %s"

    const/4 v6, 0x2

    .line 5020
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

    invoke-static {p1, v3}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v3, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;

    iget v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-direct {v3, v4, p2}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;-><init>(II)V

    invoke-virtual {p1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5022
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq p1, v2, :cond_f

    if-ne p2, v2, :cond_e

    if-eq p1, v0, :cond_f

    .line 5024
    :cond_e
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_f
    if-ne p2, v1, :cond_10

    .line 5027
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-nez p1, :cond_10

    .line 5028
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->hideShortcutMenu(Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5030
    :cond_10
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 5031
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

.method public setLastLaunchApp(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method public setLastLaunchApp(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V
    .locals 3

    .line 624
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 625
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 626
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->isEquals(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    :cond_1
    return-void
.end method

.method public setLauncherCallbacks(Lcom/miui/home/launcher/LauncherCallbacks;)Z
    .locals 0

    .line 8066
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    const/4 p1, 0x1

    return p1
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 8075
    new-instance v0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 8076
    invoke-interface {p1, v0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V

    const/4 v1, 0x0

    .line 8077
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->onScrollChanged(F)V

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 8079
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    const/4 v0, 0x0

    .line 8080
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    .line 8081
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setLauncherWindowAlpha(F)V
    .locals 3

    .line 7401
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7402
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7403
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 7404
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v0, "Launcher"

    .line 7405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLauncherWindowAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public showAppView()V
    .locals 3

    .line 8374
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8375
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_0
    return-void
.end method

.method public showDefaultScreenPreviewView(Z)V
    .locals 3

    .line 7747
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 7750
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setIsShowing(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7752
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 7753
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 7754
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setVisibility(I)V

    .line 7755
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7756
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->onShow(Z)V

    const v0, 0x7f10006d

    .line 7757
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    goto :goto_0

    .line 7759
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 7760
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 7761
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const v0, 0x7f100058

    .line 7762
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 7764
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

    .line 2163
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    return-void
.end method

.method public showMenu(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 7580
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    if-nez p1, :cond_0

    .line 7581
    new-instance p1, Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-direct {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 7583
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7584
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    .line 7586
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/LauncherMenuDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 7587
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    if-eqz p1, :cond_3

    .line 7588
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    .line 7589
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public showPresent()V
    .locals 1

    .line 3489
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->notShowUserPresentAnimation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3490
    :goto_1
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->clearShowUserPresentAnimationFlag(Landroid/content/Context;)V

    if-eqz v0, :cond_2

    .line 3491
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatNone;

    invoke-direct {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatNone;-><init>()V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->getInstance()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showUserPresentAnimation(Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;)V

    .line 3492
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3493
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_3
    return-void
.end method

.method public showSceneScreen()V
    .locals 1

    const/4 v0, 0x1

    .line 4741
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 4742
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4744
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenLoading()V

    goto :goto_0

    .line 4746
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reinit()V

    .line 4747
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenCore(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    :goto_0
    return-void
.end method

.method public showSceneScreenLoading()V
    .locals 5

    .line 4787
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v2, 0x0

    const v3, 0x7f0d004b

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    .line 4790
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 4792
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 4793
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    const-string v1, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4794
    new-instance v1, Lcom/miui/home/launcher/Launcher$48;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$48;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4799
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 4801
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    return-void
.end method

.method public showStatusBar(Z)V
    .locals 2

    .line 5120
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5122
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5123
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 5124
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    goto :goto_0

    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    :goto_0
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5127
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showStatusBarDelay(ZJ)V
    .locals 1

    .line 5114
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBar:Z

    .line 5115
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5116
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showTogglesSelectView()V
    .locals 4

    .line 1975
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    if-nez v0, :cond_0

    .line 1976
    new-instance v0, Lcom/miui/home/launcher/TogglesSelectView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/TogglesSelectView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    .line 1977
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

    .line 7595
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-nez p1, :cond_0

    .line 7596
    new-instance p1, Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-direct {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 7598
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7599
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    .line 7601
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 7602
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz p1, :cond_3

    .line 7603
    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    .line 7604
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public showWidgetsPreviewLayout(Z)V
    .locals 4

    .line 5036
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    .line 5037
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5041
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->resetAdapter()V

    .line 5042
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setScreenType(I)V

    .line 5043
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setVisibility(I)V

    .line 5044
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5045
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 5046
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 5047
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->clearAllScreensToast()V

    .line 5048
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HotSeats;->setVisibility(I)V

    .line 5049
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    .line 5050
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    goto :goto_1

    .line 5052
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5053
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 5054
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 5055
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

    .line 5056
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    :cond_3
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    .line 5058
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

    .line 5166
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->blockSnap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5167
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->snapToScreen(I)I

    .line 5168
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine()V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    .line 4305
    :try_start_0
    instance-of v1, p3, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_1

    .line 4306
    move-object v0, p3

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v0

    .line 4307
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    if-eqz v1, :cond_0

    .line 4308
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    invoke-virtual {v1, p0, p3, v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 4310
    :cond_0
    invoke-static {p3, v0}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->getLaunchActivityOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 4313
    :goto_0
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 4314
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4315
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch()V

    .line 4316
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLastLaunchApp(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4317
    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemFlagAndLaunchCount(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    .line 4318
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->onLaunchApplication(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4319
    iget v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    .line 4320
    move-object p3, v0

    check-cast p3, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v2

    .line 4321
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 4322
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 4323
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, p0

    .line 4322
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->startShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    const-string v0, "profile"

    .line 4327
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 4328
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x10000000

    .line 4329
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4330
    invoke-direct {p0, v1, p3}, Lcom/miui/home/launcher/Launcher;->tryToAddSourceBounds(Landroid/content/Intent;Landroid/view/View;)V

    .line 4332
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackGoolgPlay(Landroid/content/Intent;)V

    if-eqz v0, :cond_5

    .line 4333
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 4335
    :cond_3
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4336
    invoke-static {p0, v1, v4, v0}, Lcom/miui/launcher/utils/LauncherUtils;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 4339
    :cond_4
    new-instance p3, Lcom/miui/home/launcher/-$$Lambda$Launcher$_ux1mK9gp0LqAFcXx0Bkf_4Sako;

    invoke-direct {p3, p0, v1, v0, v4}, Lcom/miui/home/launcher/-$$Lambda$Launcher$_ux1mK9gp0LqAFcXx0Bkf_4Sako;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    goto :goto_2

    .line 4334
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    const v0, 0x7f10023c

    const/4 v1, 0x0

    .line 4343
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Launcher"

    .line 4344
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

    invoke-static {v0, p1, p3}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public startActivityForCreateShortcut(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 2948
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4404
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4387
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$yMS2T1kyFB-RqW412ab_ei1HOh8;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$yMS2T1kyFB-RqW412ab_ei1HOh8;-><init>(Lcom/miui/home/launcher/Launcher;ILandroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    const/16 p1, 0x3ea

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 4398
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    :cond_0
    return-void
.end method

.method public startBinding()V
    .locals 4

    const/4 v0, 0x3

    .line 5336
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5337
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5339
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5340
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5343
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

    .line 5305
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    const/4 v0, 0x1

    .line 5306
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 5307
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearForReload()V

    .line 5308
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5309
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->startLoading()V

    .line 5310
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->startLoading()V

    .line 5311
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setEnable(Z)V

    .line 5312
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initLoadingAsyncInflateManager()V

    .line 5313
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    .line 5314
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    .line 5315
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackNewHomeModuleLoaded()V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6

    .line 2646
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2649
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 2650
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearTypedText()V

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const-string p1, "search"

    .line 2654
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/SearchManager;

    .line 2655
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

    .line 8133
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8134
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    if-nez v0, :cond_0

    .line 8136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.PRIVACY_APPS_HELPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 8137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8138
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 8139
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    :cond_0
    return-void
.end method

.method public tryToRegisterWidgetListener()V
    .locals 3

    .line 8280
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    if-nez v0, :cond_0

    .line 8282
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    const/4 v0, 0x1

    .line 8283
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "startListening error"

    .line 8286
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method uninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 6749
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 6750
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "miui.intent.action.CREATE_QUICK_CLEANUP_SHORTCUT"

    .line 6754
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6755
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallCleanButton()V

    return-void

    :cond_1
    const-string v2, "com.android.securitycenter.CREATE_DEEP_CLEAN_SHORTCUT"

    .line 6759
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6760
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallPowerCleanButton()V

    return-void

    :cond_2
    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 6764
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 6766
    new-instance v1, Lcom/miui/home/launcher/Launcher$64;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/miui/home/launcher/Launcher$64;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 6781
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public updateDeepShortcut(Lcom/miui/launcher/common/ShortcutInfoCompat;)V
    .locals 3

    .line 6649
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    .line 6650
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6651
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6653
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/DeepShortcutInfo;->updateDeepShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    :cond_0
    return-void
.end method

.method public updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 7353
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public updateOverviewBackgroundAlpha(F)V
    .locals 1

    .line 8501
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewBackground:Lcom/miui/home/recents/views/OverviewBackground;

    if-eqz v0, :cond_0

    .line 8502
    invoke-virtual {v0}, Lcom/miui/home/recents/views/OverviewBackground;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8503
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewBackground:Lcom/miui/home/recents/views/OverviewBackground;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/OverviewBackground;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public updateOverviewBackgroundAlpha(FJ)V
    .locals 1

    .line 8508
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewBackground:Lcom/miui/home/recents/views/OverviewBackground;

    if-eqz v0, :cond_0

    .line 8509
    invoke-virtual {v0}, Lcom/miui/home/recents/views/OverviewBackground;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V
    .locals 4

    .line 8153
    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 8154
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8156
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "attached-launcher-identifier"

    const-string v3, "com.miui.home"

    .line 8158
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "requested-widget-style"

    const-string v3, "cqsb"

    .line 8159
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8160
    invoke-virtual {p3, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 8163
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 p3, 0x80

    .line 8164
    invoke-virtual {p1, v0, p3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 8165
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string p3, "com.google.android.gsa.searchwidget.alt_initial_layout_cqsb"

    const/4 v0, -0x1

    .line 8166
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 8168
    iput p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateSoftInputMode()V
    .locals 2

    .line 8432
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 8437
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    if-eq v0, v1, :cond_1

    .line 8438
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 8439
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    :cond_1
    return-void
.end method

.method public updateStatusBarClock()V
    .locals 2

    .line 5162
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock(J)V

    return-void
.end method

.method public updateStatusBarClock(J)V
    .locals 1

    .line 5139
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->isDisableUpdateStatusBarClock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 5143
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Launcher"

    const-string p2, "workspace is loading, don\'t update status bar"

    .line 5144
    invoke-static {p1, p2}, Lcom/miui/home/launcher/Launcher$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5148
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5149
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    if-nez v0, :cond_3

    .line 5151
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    .line 5152
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5153
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isScreenHasClockGadget(J)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    .line 5154
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

    .line 5156
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mStatusBarClockController:Lcom/miui/launcher/utils/StatusBarClockController;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$oMWnBLRIVmbtSod5vAbhr4TQxh8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$oMWnBLRIVmbtSod5vAbhr4TQxh8;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p2, p1, v0}, Lcom/miui/launcher/utils/StatusBarClockController;->showOrHideClock(ZLjava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public updateWallpaperOffset(FFFF)Z
    .locals 1

    .line 5262
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset(FFFF)Z

    move-result p1

    return p1
.end method

.method public updateWallpaperOffsetAnimate(FFFF)Z
    .locals 1

    .line 5266
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffsetAnimate(FFFF)Z

    move-result p1

    return p1
.end method

.method public updateWidgetProgress(Ljava/lang/String;I)V
    .locals 3

    .line 6121
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

    .line 6122
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6123
    invoke-virtual {v1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProgress(I)V

    .line 6124
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 6125
    iget-object v1, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v1, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    .line 6126
    invoke-virtual {v1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->updateProgress()V

    goto :goto_0

    :cond_1
    return-void
.end method
