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

    .line 1082
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mione"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsClipTransitionDevice:Z

    .line 5438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 5439
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 5438
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

    .line 799
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseActivity;-><init>()V

    .line 402
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    .line 432
    new-instance v1, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 469
    new-instance v1, Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 471
    sget-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v1, 0x0

    .line 473
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    .line 478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 486
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 487
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 488
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    const-wide/16 v2, -0x1

    .line 489
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    .line 490
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 492
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    .line 496
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 498
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    const/4 v4, 0x1

    .line 499
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 500
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    const/4 v5, 0x7

    .line 501
    iput v5, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 509
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 514
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    .line 515
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    .line 516
    new-instance v5, Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-direct {v5}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    .line 517
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    .line 518
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    .line 519
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    .line 526
    new-instance v5, Lcom/miui/home/launcher/common/ConflictsManager;

    invoke-direct {v5}, Lcom/miui/home/launcher/common/ConflictsManager;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    const-wide/16 v5, 0x0

    .line 528
    iput-wide v5, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    .line 529
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    .line 530
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    .line 533
    new-instance v5, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    invoke-direct {v5, p0, v1}, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mLongClickInBackgroundMessageHandler:Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    const/4 v5, 0x2

    .line 542
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    .line 545
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    .line 558
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 560
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    .line 562
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 568
    new-instance v6, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    invoke-direct {v6}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mContactsColorizedPortraitController:Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    .line 580
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    .line 581
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 583
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    .line 585
    new-instance v6, Lcom/miui/home/launcher/Launcher$1;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/Launcher$1;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    .line 783
    new-instance v6, Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/LauncherLifecycleLog;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    .line 787
    new-instance v6, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-direct {v6}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    .line 804
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 805
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 1402
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 1407
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 1550
    new-instance v6, Lcom/miui/home/launcher/Launcher$4;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/Launcher$4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1606
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1986
    new-instance v2, Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f7d70a4    # 0.99f

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-direct {v2, v7, v8, v6, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 1987
    new-instance v2, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v8, 0x3ea3d70a    # 0.32f

    invoke-direct {v2, v7, v8, v3, v6}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 2262
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    .line 2532
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$dlEK9FIt3oJvGIMFWRtgMiH1pPA;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$dlEK9FIt3oJvGIMFWRtgMiH1pPA;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    .line 3310
    new-instance v2, Lcom/miui/home/launcher/Launcher$20;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$20;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    .line 3333
    new-instance v2, Lcom/miui/home/launcher/Launcher$21;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$21;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    .line 3340
    new-instance v2, Lcom/miui/home/launcher/Launcher$22;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$22;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    .line 3357
    new-instance v2, Lcom/miui/home/launcher/Launcher$23;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$23;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    .line 3364
    new-instance v2, Lcom/miui/home/launcher/Launcher$24;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$24;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    .line 3372
    new-instance v2, Lcom/miui/home/launcher/Launcher$25;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$25;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    .line 3382
    new-instance v2, Lcom/miui/home/launcher/Launcher$26;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$26;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    .line 3395
    new-instance v2, Lcom/miui/home/launcher/Launcher$27;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$27;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    .line 3413
    new-instance v2, Lcom/miui/home/launcher/Launcher$28;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$28;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    .line 3421
    new-instance v2, Lcom/miui/home/launcher/Launcher$29;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$29;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    .line 3431
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    .line 3432
    invoke-static {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->createAnimation(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    .line 3434
    new-instance v2, Lcom/miui/home/launcher/Launcher$30;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$30;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    .line 3451
    new-instance v2, Lcom/miui/home/launcher/Launcher$31;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$31;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    .line 3469
    new-instance v2, Lcom/miui/home/launcher/Launcher$32;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$32;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    .line 3476
    new-instance v2, Lcom/miui/home/launcher/Launcher$33;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$33;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    .line 3487
    new-instance v2, Lcom/miui/home/launcher/Launcher$34;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$34;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    .line 3494
    new-instance v2, Lcom/miui/home/launcher/Launcher$35;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$35;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    .line 3518
    new-instance v2, Lcom/miui/home/launcher/Launcher$36;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$36;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    .line 3536
    new-instance v2, Lcom/miui/home/launcher/Launcher$37;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$37;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    .line 3544
    new-instance v2, Lcom/miui/home/launcher/Launcher$38;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$38;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    .line 3551
    new-instance v2, Lcom/miui/home/launcher/Launcher$39;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$39;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    .line 3829
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    .line 3964
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    .line 3965
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    const-string v2, ""

    .line 4184
    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    .line 4404
    new-instance v2, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    .line 5251
    new-instance v2, Lcom/miui/home/launcher/Launcher$52;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$52;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    .line 5671
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rxh_DdL7AlV00H5xYSsTCH_tur4;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rxh_DdL7AlV00H5xYSsTCH_tur4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mReverseComparator:Ljava/util/Comparator;

    .line 5815
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    .line 5816
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 6421
    new-instance v2, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDeleteCellScreenMessageHandler:Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

    .line 6423
    new-instance v2, Lcom/miui/home/launcher/Launcher$61;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$61;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mBoostResetRunnable:Ljava/lang/Runnable;

    .line 7045
    new-instance v2, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 7522
    new-instance v2, Lcom/miui/home/launcher/Launcher$72;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$72;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    .line 7548
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    .line 7755
    new-instance v2, Lcom/miui/home/launcher/Launcher$75;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$75;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    .line 7864
    new-instance v2, Lcom/miui/home/launcher/Launcher$76;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$76;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    .line 7972
    new-instance v2, Lcom/miui/home/launcher/Launcher$77;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$77;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    .line 7982
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    .line 8005
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    .line 8006
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    .line 8011
    new-instance v2, Lcom/miui/home/launcher/Launcher$FsCallback;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$FsCallback;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    .line 8118
    new-instance v2, Lcom/miui/home/launcher/Launcher$79;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$79;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    const/high16 v2, -0x40800000    # -1.0f

    .line 8238
    iput v2, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    .line 8295
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    .line 8454
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    const/4 v0, -0x1

    .line 8613
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    .line 8746
    new-instance v0, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModuleMessageHandler:Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;

    .line 8759
    new-instance v0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRecentMessageHandler:Lcom/miui/home/launcher/Launcher$RecentMessageHandler;

    .line 800
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

    .line 7016
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 7017
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    if-eqz v0, :cond_0

    .line 7018
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->cancelIconBackAnimation()V

    :cond_0
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    const-string v0, "input_method"

    .line 1646
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1647
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Launcher;)J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    return-wide v0
.end method

.method static synthetic access$10000(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->disconnectFsGuestureService()V

    return-void
.end method

.method static synthetic access$10100(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    return p0
.end method

.method static synthetic access$10102(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/miui/home/launcher/Launcher;)Landroid/content/ServiceConnection;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 347
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    return p0
.end method

.method static synthetic access$10302(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 347
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    return p1
.end method

.method static synthetic access$10402(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    return p1
.end method

.method static synthetic access$10600(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    return p0
.end method

.method static synthetic access$10800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/settings/LauncherGestureController;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Launcher;)Ljava/util/ArrayList;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/recents/LauncherAppTransitionManager;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    return-object p0
.end method

.method static synthetic access$11101(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 347
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkOrientation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->inflatePaView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/widget/WidgetsPreviewPage;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 347
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaAlpha:F

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)Lcom/miui/home/launcher/IBackAnimView;
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 347
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaScaleX:F

    return p1
.end method

.method static synthetic access$2202(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 347
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaScaleY:F

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/EditingEntryThumbnailView;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/HotSeats;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/SearchBar;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragLayer;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mAppLocateFolderScrollOffset:I

    return p0
.end method

.method static synthetic access$2802(Lcom/miui/home/launcher/Launcher;I)I
    .locals 0

    .line 347
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mAppLocateFolderScrollOffset:I

    return p1
.end method

.method static synthetic access$2900(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterContentObserver()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/WorkspaceThumbnailView;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    return-void
.end method

.method static synthetic access$3300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherApplication;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FitSystemWindowView;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/search/SearchEdgeLayout;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshAllAppsIcon()V

    return-void
.end method

.method static synthetic access$3800(Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Launcher;->updateTitleTip(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->changeToBackedupLockWallpaper()V

    return-void
.end method

.method static synthetic access$4300(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->autoChangeLockWallpaper(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    return-void
.end method

.method static synthetic access$4500(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAssistantOpen()V

    return-void
.end method

.method static synthetic access$4600(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    return p0
.end method

.method static synthetic access$4700(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->reloadClockIfNeed(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->notifyFancyIconPresent()V

    return-void
.end method

.method static synthetic access$4900(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Launcher;)Landroid/os/Handler;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/miui/home/launcher/Launcher;J)V
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->startLockWallpaperPreviewActivity(J)V

    return-void
.end method

.method static synthetic access$5300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startTaplusService()V

    return-void
.end method

.method static synthetic access$5500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->requestGlobalFoldersPreinstallAd()V

    return-void
.end method

.method static synthetic access$5700(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateShortcut(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/miui/home/launcher/Launcher;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$5902(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/miui/home/launcher/Launcher;J)Landroid/os/Bundle;
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->generateDefaultParams(J)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6200(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lcom/miui/home/launcher/Launcher;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 347
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/Launcher;->geneateParams(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->reportLockWallpaperFail()V

    return-void
.end method

.method static synthetic access$6502(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->setLockWallpaperFromProvider(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    return p0
.end method

.method static synthetic access$6702(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkIntentPermissions(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6902(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 347
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return p0
.end method

.method static synthetic access$7000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/Launcher;I)I
    .locals 0

    .line 347
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return p1
.end method

.method static synthetic access$7100(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->fadeInOrOutScreenContentWhenFolderAnimate(Z)V

    return-void
.end method

.method static synthetic access$7202(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->showUpsideEnterOrExitTipIfNeed(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    return-void
.end method

.method static synthetic access$7500(Lcom/miui/home/launcher/Launcher;)Landroid/view/ViewGroup;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7502(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBar:Z

    return p0
.end method

.method static synthetic access$7800(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$7900(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->getPackageNames(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mHideLandscapeShortcutMenuLayer:Z

    return p0
.end method

.method static synthetic access$8000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mHideLandscapeShortcutMenuLayer:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->removeEmptyFolders()V

    return-void
.end method

.method static synthetic access$8200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragController;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object p0
.end method

.method static synthetic access$8502(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    return p1
.end method

.method static synthetic access$8600(Lcom/miui/home/launcher/Launcher;I)Ljava/util/ArrayList;
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->getGadgetList(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8700(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8800(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onUninstallShortcut(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/miui/home/launcher/Launcher;)Ljava/lang/Runnable;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    return-object p0
.end method

.method static synthetic access$9102(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/fsgesture/IFsGestureService;)Lcom/android/systemui/fsgesture/IFsGestureService;
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    return p0
.end method

.method static synthetic access$9300(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    return p0
.end method

.method static synthetic access$9400(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->notifyFsGuestureHomeStatus(Z)V

    return-void
.end method

.method static synthetic access$9500(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9600(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9700(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Z
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->locateApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9800(Lcom/miui/home/launcher/Launcher;FF)V
    .locals 0

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->updateScreenAlphaAndScale(FF)V

    return-void
.end method

.method static synthetic access$9900(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    return-object p0
.end method

.method private adaptPNotchScreen(Landroid/view/Window;)V
    .locals 2

    .line 1007
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1008
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    :try_start_0
    const-string v0, "android.view.WindowManager$LayoutParams"

    .line 1010
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutInDisplayCutoutMode"

    .line 1011
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1012
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1013
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher"

    const-string v1, "adaptPNotchScreen"

    .line 1015
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private addHomeFeedContainer()V
    .locals 3

    .line 1829
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    .line 1830
    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    .line 1832
    new-instance v0, Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    .line 1833
    new-instance v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 1834
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshSettings()V

    return-void
.end method

.method private addNewInstallIndicator()V
    .locals 3

    .line 5690
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5692
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5693
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherProvider;->createdFirstTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5694
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$UU10EnNo6gin_hxCONWmutkucNU;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$UU10EnNo6gin_hxCONWmutkucNU;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 5698
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5699
    new-instance v1, Lcom/miui/home/launcher/Launcher$54;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Launcher$54;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$sBnG02Pm4GaaXS3nWj3gExoqN3A;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$sBnG02Pm4GaaXS3nWj3gExoqN3A;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private addOnStateChangeFinishRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 5063
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setEditingStateChangeFinishRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private afterShowUserPresentAnimation()V
    .locals 5

    .line 5869
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 5873
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5874
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v2

    .line 5875
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4, v2, v3}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5876
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5880
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5881
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->showQuickCallCellLayoutTitle()V

    .line 5882
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->alignIconsToTopWithSaveDb()V

    .line 5883
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    goto :goto_1

    .line 5885
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->alignScreenIfNeed()V

    .line 5887
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->preloadFolderContent()V

    .line 5888
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkAllAppsLabel()V

    .line 5889
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addNewInstallIndicator()V

    .line 5890
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_4

    .line 5891
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkAllUserDeepShortcuts()V

    .line 5893
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$rziayQY9dOXyzSKxv-YKXh3armQ;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$rziayQY9dOXyzSKxv-YKXh3armQ;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 5894
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    .line 5895
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 5896
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startTaplusService()V

    .line 5897
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startAndBindServiceIfNeed()V

    .line 5899
    invoke-static {}, Lcom/miui/home/launcher/common/AppCategoryManager;->getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;

    move-result-object v0

    .line 5900
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5901
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v4, Lcom/miui/home/launcher/-$$Lambda$Launcher$xeATL0QKIm0SveXzbVUPD-DpAhI;

    invoke-direct {v4, p0, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$xeATL0QKIm0SveXzbVUPD-DpAhI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 5906
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/common/AppCategoryManager;->initAppCategoryListAsync(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 5907
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5908
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAppsView()V

    .line 5909
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5910
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    .line 5912
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->trackShow()V

    .line 5913
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    .line 5914
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    return-void
.end method

.method private alignScreenIfNeed()V
    .locals 7

    .line 5918
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->shouldAlignScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5920
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIgnoreAlignScreenList()Ljava/lang/String;

    move-result-object v0

    .line 5922
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, ","

    .line 5923
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    move v3, v1

    .line 5925
    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5926
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v4

    .line 5927
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6, v4, v5}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_1

    .line 5928
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    .line 5929
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5932
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIgnoreAlignScreenList(Ljava/lang/String;)V

    .line 5933
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setShouldAlignScreen(Z)V

    :cond_4
    return-void
.end method

.method private applyingDefaultTheme()Z
    .locals 8

    const-string v0, "/data/system/theme"

    .line 4080
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4081
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4082
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 4086
    :cond_0
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    .line 4087
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "icons"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4088
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

    .line 3967
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3970
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$45;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$45;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 4011
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

    .line 6179
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

    .line 6180
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 6182
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cacheSceneScreenRef(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 2

    .line 4897
    new-instance v0, Lcom/miui/home/launcher/CustomableReference;

    .line 4898
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

    .line 7023
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7024
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "Launcher"

    const-string v1, "cancelMiuiThumbnailAnimation"

    .line 7025
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7026
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelMiuiThumbnailAnimation(Landroid/content/Context;)V

    return-void
.end method

.method private changeScreenContent(F)V
    .locals 2

    .line 2019
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3f733333    # 0.95f

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    .line 2021
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 2022
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private changeScreenContentOnClose(F)V
    .locals 0

    .line 2008
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 2009
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContent(F)V

    return-void
.end method

.method private changeScreenContentOnOpen(F)V
    .locals 0

    .line 2003
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 2004
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContent(F)V

    return-void
.end method

.method private changeToBackedupLockWallpaper()V
    .locals 2

    .line 4072
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4073
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->resetLockWallpaper(Landroid/content/Context;)V

    .line 4074
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

    .line 7959
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

    .line 7962
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 7965
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 7966
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 7967
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 7968
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 7969
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private checkAllAppsLabel()V
    .locals 2

    .line 6048
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$7uIlwHNYRh7_IHe39AfxO7PEGJw;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$7uIlwHNYRh7_IHe39AfxO7PEGJw;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkAllUserDeepShortcuts()V
    .locals 4

    .line 5976
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    .line 5977
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

    .line 5978
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$k2iNr_IEFwU4mc8dm4EoTfDJPgY;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$k2iNr_IEFwU4mc8dm4EoTfDJPgY;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;)V

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$w5ogVcvvYAW7iKCP44R5mkbg6Uw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$w5ogVcvvYAW7iKCP44R5mkbg6Uw;

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUserUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkDarkMode()V
    .locals 1

    .line 8379
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8380
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onDarkModeChanged()V

    :cond_0
    return-void
.end method

.method private checkDeepShortcuts(Landroid/os/UserHandle;)V
    .locals 11

    const-string v0, "Launcher"

    .line 5995
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

    .line 5996
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 5998
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5999
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6000
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 6001
    invoke-virtual {v3}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6005
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->queryForPinnedShortcuts(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 6007
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

    .line 6008
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6009
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->isDeepShortcutMatchCurrentMode(Lcom/miui/launcher/common/ShortcutInfoCompat;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v0, "Launcher"

    const-string v3, "checkDeepShortcuts, contact deep shortcut don\'t match currentMode"

    .line 6010
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6015
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6016
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6017
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6018
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6019
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6021
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Launcher"

    const-string v9, "checkUserDeepShortcuts, update deepShortcut(%s, %s, %s)"

    .line 6022
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

    .line 6023
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/miui/home/launcher/ShortcutChangeTask;

    invoke-direct {v4, v8, v1, v0, p0}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    if-eqz v5, :cond_1

    .line 6027
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->makeInstallShortcutIntent(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object v3

    .line 6028
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/miui/home/launcher/Launcher$58;

    invoke-direct {v5, p0, v3, v0}, Lcom/miui/home/launcher/Launcher$58;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 6041
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

    .line 6042
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

    .line 6043
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

    .line 1110
    new-instance v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;-><init>(Lcom/miui/home/launcher/Launcher$1;)V

    .line 1111
    invoke-static {p0, v0}, Lcom/miui/home/launcher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    .line 1113
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1115
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1116
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1118
    iget v4, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1119
    iget v5, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1121
    iget v6, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 1122
    iget v1, v1, Landroid/content/res/Configuration;->mnc:I

    .line 1124
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

    .line 1127
    iput-object v3, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1128
    iput v5, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1129
    iput v1, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 1131
    invoke-static {p0, v0}, Lcom/miui/home/launcher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    return v8

    :cond_2
    return v7
.end method

.method private checkIntentPermissions(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.intent.action.CALL"

    .line 4411
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4412
    invoke-static {p0}, Lcom/miui/home/launcher/common/PermissionUtils;->checkCallPhonePermission(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 4413
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/PermissionUtils;->requestCallPhonePermissions(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private checkInvalidateGadget()V
    .locals 4

    .line 5826
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5827
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

    .line 5828
    instance-of v3, v2, Lcom/miui/home/launcher/gadget/MtzGadget;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/gadget/MtzGadget;

    .line 5829
    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/MtzGadget;->isInvalidateGadget()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5830
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v3, :cond_0

    .line 5831
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5834
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5835
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    .line 5836
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f10021b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 5837
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method private checkNewInstalledAppsBeStarted()V
    .locals 4

    .line 1608
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1609
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 1610
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1611
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1613
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1614
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

    .line 1615
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1616
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1619
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/Launcher$5;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Launcher$5;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkOrientation()V
    .locals 4

    .line 8364
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8365
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_2

    const-string v1, "Launcher"

    .line 8366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen orientation changed, newOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8367
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8368
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 8369
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onScreenOrientationChanged()V

    .line 8371
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8372
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->requestApplyInsetsOfNavStubView()V

    .line 8374
    :cond_1
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    :cond_2
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .locals 2

    .line 654
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 655
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v1

    :cond_0
    return v1
.end method

.method private clearForReload()V
    .locals 3

    .line 5426
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5427
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$NJOekdPMOzsFrmcAY8SQC5oqj3g;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/-$$Lambda$NJOekdPMOzsFrmcAY8SQC5oqj3g;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 5428
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5429
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5430
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

    .line 5431
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_0

    .line 5433
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5434
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->removeAllScreens()V

    .line 5435
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->clearScreens()V

    return-void
.end method

.method private clearLastAddInfo()V
    .locals 1

    .line 2189
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 2190
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    const/4 v0, 0x0

    .line 2191
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    :cond_0
    return-void
.end method

.method private clearRemoteAnimationProvider()V
    .locals 1

    .line 8713
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8714
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 8715
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->clearRemoteAnimationProvider()V

    :cond_0
    return-void
.end method

.method private clearTypedText()V
    .locals 2

    .line 1675
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1676
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1677
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v9, p0

    .line 2137
    iget-object v0, v9, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-nez v1, :cond_0

    const-string v0, "Launcher"

    const-string v1, "completeAddAppWidget error, mLastAddInfo isn\'t class(LauncherAppWidgetProviderInfo)"

    .line 2138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2141
    :cond_0
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    .line 2146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "appWidgetId"

    .line 2148
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Launcher"

    .line 2149
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

    .line 2152
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v2

    const-string v3, "Launcher"

    .line 2153
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

    .line 2157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    return-void

    .line 2163
    :cond_3
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 2165
    iget-wide v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 2166
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

    .line 2169
    :cond_4
    iget-object v3, v9, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v3, v9, v1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2170
    invoke-direct {v9, v1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 2173
    iget-object v3, v9, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v9, v2, v4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2175
    iget-object v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9, v9, v3, v4}, Lcom/miui/home/launcher/Launcher;->updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    .line 2176
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v2, v4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2177
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2178
    iget-object v2, v9, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    iget v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/home/launcher/CellLayout;->getWidgetMeasureSpec(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 2180
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v3 .. v8}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 2182
    iget-object v10, v9, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v11, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v12, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iget v13, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    iget v14, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v15, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 2183
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v16

    .line 2182
    invoke-virtual/range {v10 .. v16}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 2185
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    return-void
.end method

.method private completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;
    .locals 6

    .line 2088
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

    .line 2090
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2091
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2092
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v5, v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v5, :cond_2

    .line 2093
    check-cast v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 2096
    :goto_1
    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    const/4 v5, 0x1

    .line 2097
    invoke-direct {p0, v0, v1, v5}, Lcom/miui/home/launcher/Launcher;->findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v3

    .line 2100
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1, p1, v0, v5}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2102
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/ShortcutInfo;->setIconPackage(Ljava/lang/String;)V

    .line 2103
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2104
    invoke-virtual {p0, p1, v5, v2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v3
.end method

.method private completeAddShortcutToggle(I)Landroid/view/View;
    .locals 2

    .line 2123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ToggleId"

    .line 2124
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2125
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 2126
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2127
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private disconnectFsGuestureService()V
    .locals 3

    .line 8141
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "com.miui.home"

    .line 8143
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/fsgesture/IFsGestureService;->unregisterCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8145
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 8148
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

    .line 8195
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

    .line 8196
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

    .line 8195
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$fZIVWT70BQeoRSrRvMgSEK1TX18;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$fZIVWT70BQeoRSrRvMgSEK1TX18;-><init>(Ljava/util/function/Consumer;)V

    .line 8198
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private doSelfProtect()V
    .locals 3

    .line 765
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mToken:Landroid/os/Binder;

    .line 766
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mToken:Landroid/os/Binder;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->setProcessForeground(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "setProcessForeground"

    .line 768
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V
    .locals 10

    .line 4795
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->moveDragViewToFirst(Landroid/view/View;)V

    .line 4796
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 4797
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedDragSources()[Lcom/miui/home/launcher/DragSource;

    move-result-object v9

    .line 4799
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4800
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 4802
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 4803
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    iget p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 4802
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/FolderCling;->beforeDragStart(I)V

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-nez p2, :cond_1

    .line 4806
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v3, 0x0

    .line 4807
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

    .line 4806
    invoke-virtual/range {v1 .. v8}, Lcom/miui/home/launcher/DragController;->startDrag([Lcom/miui/home/launcher/ShortcutInfo;ZF[Lcom/miui/home/launcher/DragSource;IIZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4809
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 4813
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    .line 4814
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, v9

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V

    goto :goto_1

    .line 4817
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p2, v0, v9, v3, v2}, Lcom/miui/home/launcher/DragController;->autoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;II)V

    .line 4819
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 4823
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->afterDragStart()V

    .line 4825
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDragMultiItems()V

    return-void
.end method

.method private dragSingleItem(Lcom/miui/home/launcher/CellLayout$CellInfo;Landroid/view/View;)V
    .locals 1

    .line 4783
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->isViewInFolder(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4784
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Folder;->startDrag(Landroid/view/View;)V

    goto :goto_0

    .line 4786
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V

    .line 4788
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_1

    .line 4789
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->saveCheckedStatus()V

    .line 4791
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDragItem(Landroid/view/View;)V

    return-void
.end method

.method private fadeInOrOutScreenContentWhenFolderAnimate(Z)V
    .locals 3

    .line 1990
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 1991
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    if-eqz p1, :cond_0

    .line 1993
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    goto :goto_1

    .line 1995
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 1996
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

    .line 1997
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    .line 1998
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

    .line 3153
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

    .line 3157
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/Launcher;->findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p1

    return-object p1
.end method

.method private findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3161
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 3162
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    .line 3167
    :cond_1
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIII)[I

    move-result-object p1

    if-nez p1, :cond_3

    if-eqz p7, :cond_2

    const p1, 0x7f1001cb

    .line 3170
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    :cond_2
    return-object p2

    .line 3175
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {p2}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    const/4 p3, 0x0

    .line 3176
    aget p3, p1, p3

    iput p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    const/4 p3, 0x1

    .line 3177
    aget p1, p1, p3

    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 3178
    iput p5, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 3179
    iput p6, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    const/16 p1, -0x64

    .line 3180
    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    .line 3181
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p3

    iput-wide p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-object p2
.end method

.method private geneateParams(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 3820
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "showTime"

    .line 3821
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "currentWallpaperInfo"

    .line 3822
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wallpaperInfos"

    .line 3823
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "adWallpaperInfos"

    .line 3824
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dialogComponent"

    .line 3825
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

    .line 6827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6828
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

    .line 6829
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 6830
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 6831
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

    .line 6971
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 6974
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x1

    .line 6975
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6976
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6977
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

    .line 8447
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 8448
    instance-of v0, p0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 8449
    check-cast p0, Lcom/miui/home/launcher/Launcher;

    return-object p0

    .line 8451
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;
    .locals 1

    .line 6705
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6708
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6709
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

    .line 6706
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

    .line 6725
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6726
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

    .line 3928
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request_json"

    .line 3929
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "getNextLockWallpaperUri"

    .line 3930
    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/launcher/utils/ContentProviderUtils;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "result_json"

    .line 3935
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3938
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 3946
    new-instance v0, Lcom/miui/home/launcher/Launcher$44;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$44;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 3951
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher$44;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 3953
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

    .line 3955
    invoke-virtual {p1, p3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3956
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    .line 3960
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

    .line 5726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5727
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$zxdLNma-PZtpe1t20pfKUlf3WtU;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$zxdLNma-PZtpe1t20pfKUlf3WtU;-><init>(Ljava/util/ArrayList;)V

    .line 5728
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

    .line 6674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6675
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$3Pecs7mfejlVGOyHNXWLfCpbZQk;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$3Pecs7mfejlVGOyHNXWLfCpbZQk;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getSnapToScreenIndexForLocate(Lcom/miui/home/launcher/ItemInfo;)I
    .locals 4

    .line 2539
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    return p1

    .line 2541
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2542
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getNextTypeScreenIndex()I

    move-result p1

    return p1

    .line 2544
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    return p1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .line 1671
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goOutOldLayer()V
    .locals 6

    .line 4950
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    .line 4951
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 4952
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    .line 4954
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

    .line 4955
    new-array v2, v2, [F

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v3

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4956
    new-instance v2, Lcom/miui/home/launcher/Launcher$50;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$50;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4964
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private handleActivityNotFound(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6

    .line 4539
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4542
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v0, "profile"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4543
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v3, "profile"

    .line 4544
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    .line 4545
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4546
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getBackupState(Landroid/content/Context;)I

    move-result p1

    const-string v3, "Launcher"

    .line 4547
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

    .line 4549
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const p1, 0x7f100079

    .line 4551
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return v2

    .line 4556
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 4558
    :try_start_0
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "com.xiaomi.market"

    .line 4560
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4561
    new-instance p2, Lmiui/app/AlertDialog$Builder;

    const/16 v0, 0x8

    invoke-direct {p2, p0, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100144

    .line 4562
    invoke-virtual {p2, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f100143

    .line 4563
    invoke-virtual {p2, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1000a3

    const/4 v1, 0x0

    .line 4564
    invoke-virtual {p2, v0, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1000bd

    new-instance v1, Lcom/miui/home/launcher/Launcher$46;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$46;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    .line 4565
    invoke-virtual {p2, v0, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    .line 4576
    invoke-virtual {p1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    .line 4577
    invoke-virtual {p1}, Lmiui/app/AlertDialog;->show()V

    return v2

    .line 4582
    :cond_4
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 4583
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4584
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4585
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 4586
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_5

    .line 4587
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

    .line 4588
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

    .line 5720
    invoke-static {p2}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5721
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5722
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

    .line 8565
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8566
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

    .line 1881
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.miui.home.launcher.assistant.ui.view.AssistHolderView"

    .line 1882
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1883
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/util/AttributeSet;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1884
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const/4 v3, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1885
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1886
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1887
    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    .line 1888
    iput v4, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 1889
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    iget v2, v2, Lcom/miui/home/launcher/MinusOneScreenView;->mCurrentScreenIndex:I

    if-nez v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/MinusOneScreenView;->sendMinusScreenUpdateBroadcast(Z)V

    const-string v1, "Launcher"

    const-string v2, "loadPaView SUCCESS"

    .line 1890
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Launcher"

    const-string v3, "Exception"

    .line 1893
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1896
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    .line 1897
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    if-le v1, v0, :cond_1

    const-string v0, "Launcher"

    const-string v1, "restart process"

    .line 1900
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method

.method private initConflictItems()V
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ErrorBar;->getConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1063
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DropTargetBar;->getDropTargetBarConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1064
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1065
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ErrorBar;->getConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    .line 1066
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    .line 1067
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getDropTargetBarConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    return-void
.end method

.method private initLauncher()V
    .locals 1

    .line 1021
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$4t5ehLmU-3H60gRBrvsUg6BJGwU;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$4t5ehLmU-3H60gRBrvsUg6BJGwU;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initLoadingAsyncInflateManager()V
    .locals 1

    .line 5733
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    if-eqz v0, :cond_0

    .line 5734
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->shutDownNow()V

    .line 5736
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    return-void
.end method

.method public static final isClipTransitionDevice()Z
    .locals 1

    .line 1084
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsClipTransitionDevice:Z

    return v0
.end method

.method private isDeepShortcutMatchCurrentMode(Lcom/miui/launcher/common/ShortcutInfoCompat;)Z
    .locals 2

    .line 5987
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "is_elderly_man_shortcut"

    .line 5989
    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 5991
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

    .line 5285
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5286
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5287
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

    .line 1071
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

    .line 5281
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

    .line 4727
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 4728
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

.method public static synthetic lambda$addNewInstallIndicator$23(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 3

    .line 5695
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getNewInstalledShortcutInfos(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    .line 5694
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic lambda$addNewInstallIndicator$26(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;Ljava/util/Map;)V
    .locals 1

    .line 5705
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$aUdNv112RoNXxIy41qagWTQ1Jck;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$aUdNv112RoNXxIy41qagWTQ1Jck;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/Map;)V

    .line 5706
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$Launcher$LDvuYvJ2BldqZ4elf4939EQ1XEM;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$LDvuYvJ2BldqZ4elf4939EQ1XEM;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 5707
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$addShortcut$37(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/view/View;
    .locals 0

    .line 6526
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$addShortcut$38(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;ZZLandroid/view/View;)V
    .locals 11

    .line 6527
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

.method public static synthetic lambda$addToAppsList$45(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7295
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$addToAppsList$46(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/LauncherApplication;)V
    .locals 0

    .line 7298
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->checkCanBeDeleted(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$afterShowUserPresentAnimation$29(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 5893
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/MarketUtils;->startUserGuide(Landroid/content/Context;Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic lambda$afterShowUserPresentAnimation$30(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 2

    .line 5902
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

    .line 5903
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindAddedShortcuts$35(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 1

    .line 6137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6138
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->tellAllFoldersWhenAppAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$bindAppsRemoved$48(Ljava/util/ArrayList;)Ljava/util/stream/Stream;
    .locals 0

    .line 7380
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bindAppsRemoved$49(Ljava/util/List;)Ljava/util/stream/Stream;
    .locals 0

    .line 7381
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$bindAppsRemoved$52(Lcom/miui/home/launcher/Launcher;Ljava/util/function/Supplier;Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)V
    .locals 1

    .line 7383
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$nUsKiup-NOi_4MSVj32zzHRnt6I;

    invoke-direct {v0, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$nUsKiup-NOi_4MSVj32zzHRnt6I;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    .line 7384
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$zrtf8lJrcWkntz_v7TFQ1HgdD90;

    invoke-direct {v0, p0, p3, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$zrtf8lJrcWkntz_v7TFQ1HgdD90;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;Ljava/util/List;)V

    .line 7387
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 7393
    instance-of p1, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-nez p1, :cond_0

    .line 7394
    invoke-virtual {p3}, Lcom/miui/home/launcher/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p3}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->bindAppInfosRemoved(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindAppsRemoved$55(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)V
    .locals 1

    .line 7400
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$x4_GLuopphJM92XwPnbm4Z_NiwA;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$x4_GLuopphJM92XwPnbm4Z_NiwA;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    .line 7401
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$Launcher$2PxeJcnhoLr54ToYIH3mWF9c_Uw;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$2PxeJcnhoLr54ToYIH3mWF9c_Uw;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 7404
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$bindShortcutsChangedOnAppUpdate$36(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 7

    .line 6156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6157
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

    .line 6158
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

    .line 6159
    iget-object v5, v4, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    iget-object v6, v2, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 6160
    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6161
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6162
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getRuntimeStatusFlags()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setRuntimeStatusFlags(I)V

    const/4 v5, 0x0

    .line 6163
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/AppInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 6164
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/ShortcutInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 6165
    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6166
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ShortcutInfo;->setThirdApplicationConfig(Ljava/lang/String;)V

    .line 6167
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v2, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Launcher;->bindShortcutsChanged(Ljava/util/List;Landroid/os/UserHandle;)V

    .line 6168
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6169
    iget-wide v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6174
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->bindFolderPreviewIconsChanged(Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic lambda$checkAllAppsLabel$34(Lcom/miui/home/launcher/Launcher;)V
    .locals 10

    .line 6049
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 6050
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 6051
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6052
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6053
    iget-object v0, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 6054
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 6055
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6057
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 6058
    new-instance v9, Lcom/miui/home/launcher/-$$Lambda$Launcher$i6vw6rjxHZHDnbNxq5iG04UMIrc;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v3

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/-$$Lambda$Launcher$i6vw6rjxHZHDnbNxq5iG04UMIrc;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V

    .line 6091
    invoke-static {v9}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$checkAllUserDeepShortcuts$31(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;)V
    .locals 0

    .line 5979
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkDeepShortcuts(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic lambda$checkAllUserDeepShortcuts$32(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "checkAllDeepShortcuts"

    .line 5980
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$doAllEventBusHandlers$57(Ljava/util/function/Consumer;Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8200
    invoke-interface {p1}, Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;->getEventBusHandlers()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 8201
    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getLoadedDeepShortcutList$41(Lcom/miui/home/launcher/Launcher;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6727
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

    .line 6728
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isDeepShortcut()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 6729
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6730
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    if-eqz p3, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 6731
    invoke-virtual {v2}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6732
    :cond_3
    check-cast v1, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic lambda$getPackageNames$27(Ljava/util/ArrayList;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 5728
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getShortcutInfoWithIntent$40(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6694
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

    .line 6695
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

    .line 6696
    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6697
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getShortcutInfoWithName$39(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6676
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 6677
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

    .line 6678
    iget v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 6679
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6680
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6681
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getShowingItem$44(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 7151
    invoke-interface {p1}, Lcom/miui/home/launcher/IBackAnimView;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v1

    .line 7152
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/IBackAnimView;->getLocationOnScreen([I)V

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 7154
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 7155
    iput-object p2, p0, Lcom/miui/home/launcher/Launcher;->mIconImageRect:Landroid/graphics/Rect;

    .line 7157
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/IBackAnimView;->getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7159
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 7160
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez p2, :cond_4

    if-lez v1, :cond_4

    .line 7162
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 7163
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 7164
    :cond_1
    instance-of v2, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v2, :cond_2

    .line 7165
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->prepareBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    goto :goto_0

    .line 7166
    :cond_2
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->is720Mode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7167
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->getStartDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7169
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 7173
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7174
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7175
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-object v0
.end method

.method public static synthetic lambda$initLauncher$8(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 1022
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1023
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerContentObservers()V

    .line 1024
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAssistantOpen()V

    .line 1026
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->applyingDefaultTheme()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsDefaultThemeApplied:Z

    .line 1028
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsInSnapShotMode()V

    .line 1029
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->requestIsAppStoreEnabled()V

    .line 1030
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkForLocaleChange()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    if-eqz v0, :cond_1

    .line 1031
    :cond_0
    invoke-static {}, Lmiui/util/FileAccessable$Factory;->clearCache()V

    .line 1033
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->resetLockWallpaperProviderIfNeeded(Landroid/content/Context;)V

    .line 1034
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1035
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

    .line 1034
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1036
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setCompatibilityVersionIfNeed()V

    .line 1038
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    return-void
.end method

.method static synthetic lambda$loadPaView$12(Lcom/miui/home/launcher/module/ModuleManagerCompat;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    const-string p1, "com.miui.personalassistant"

    .line 1865
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->loadModules([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$new$22(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)I
    .locals 4

    .line 5672
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 5673
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    .line 5674
    :cond_0
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 5675
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 5676
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p2

    sub-int/2addr p2, p1

    return p2

    .line 5678
    :cond_1
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_2

    .line 5679
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sub-int/2addr p2, p1

    return p2

    .line 5681
    :cond_2
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public static synthetic lambda$notifyPowerKeeperGesture$0(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V
    .locals 5

    const-string v0, "miui.permission.powerkeeper.HIDDEN_MODE_PROVIDER"

    .line 663
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    .line 665
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.miui.powerkeeper.configure"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "notifyPowerKeeperGesture"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v0, "Launcher"

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPowerKeeperGesture status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic lambda$null$20(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 5313
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->changeStatusBarMode()V

    return-void
.end method

.method public static synthetic lambda$null$24(Lcom/miui/home/launcher/Launcher;Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 5706
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->hasAppBeUsed(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/Map;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic lambda$null$25(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 5708
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

    .line 5709
    iput v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 5710
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 5711
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 5712
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5713
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic lambda$null$33(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V
    .locals 0

    .line 6059
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemUserInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 6062
    iget p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez p1, :cond_1

    const/high16 p1, 0xc0000

    .line 6063
    invoke-virtual {p3, p4, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 6068
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, p3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 6070
    :cond_1
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 6073
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 6074
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/miui/home/launcher/Launcher$59;

    invoke-direct {p4, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$59;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/CharSequence;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-eqz p5, :cond_3

    const-string p1, "Launcher"

    .line 6085
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "check lable is last "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "pref_key_last_label_locale"

    .line 6088
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 6086
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic lambda$null$50(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 2

    .line 7385
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

    .line 7386
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

.method public static synthetic lambda$null$51(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;Ljava/util/List;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 7388
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getRuntimeStatusFlags()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setRuntimeStatusFlags(I)V

    const-string p1, "Launcher"

    .line 7389
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

    .line 7390
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->needRemoveFromDB(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    .line 7391
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unCheckShortcut(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$53(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 1

    .line 7402
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7403
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

.method public static synthetic lambda$null$54(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 7405
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7406
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7407
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static synthetic lambda$oQp6NMjnyK_DA-uy4MAy0awe8CM(Lcom/miui/home/launcher/Launcher;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContentOnOpen(F)V

    return-void
.end method

.method public static synthetic lambda$onClick$16(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 4325
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->checkForGameFolder(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$onCreate$1()V
    .locals 1

    .line 850
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->migrateData()V

    .line 852
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$2(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "migrateData"

    .line 854
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$onCreate$3(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 898
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->tryToRegisterWidgetListener()V

    return-void
.end method

.method static synthetic lambda$onCreate$4(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "tryToRegisterWidgetListener"

    .line 899
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$onCreate$5(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 905
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method static synthetic lambda$onCreate$6(Ljava/lang/Object;)V
    .locals 1

    .line 956
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$7(Ljava/lang/Object;)V
    .locals 1

    .line 960
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onDestroy$15(Ljava/lang/Object;)V
    .locals 1

    .line 2720
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2721
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onResume$10(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 1384
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    return-void
.end method

.method public static synthetic lambda$onResume$11(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1390
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->hookViewRootImpl(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic lambda$onResume$9(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->startFallbackHomeInIdleHander(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onWindowFocusChanged$56(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 7569
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    return-void
.end method

.method public static synthetic lambda$refreshProgressIcons$28(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 5843
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

    .line 5844
    instance-of v2, v1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz v2, :cond_0

    .line 5845
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->onIconChanged(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$removeDeepShortcut$42(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 6755
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/Utilities;->getUserForUserId(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p1

    .line 6754
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->unpinShortcutIfExist(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$removeFromAppsList$47(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7307
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$resetScreenContent$14(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 2031
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setupAnimations$13(Lcom/miui/home/launcher/Launcher;F)V
    .locals 1

    .line 1948
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getUpdateListener()Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;->onAnimationUpdate(F)V

    return-void
.end method

.method public static synthetic lambda$showStatusBar$19(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 2

    .line 5267
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->isStatusBarShow()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 5271
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5272
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 5273
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    goto :goto_0

    :cond_1
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    :goto_0
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5276
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic lambda$startActivity$17(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 1

    .line 4470
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4471
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 4470
    invoke-static {p0, v0, p2, p1, p3}, Lcom/miui/launcher/utils/PortableUtils;->startMainActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$startActivityForResult$18(Lcom/miui/home/launcher/Launcher;ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 4521
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    :cond_0
    if-lt p1, v1, :cond_1

    .line 4524
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    .line 4526
    :cond_1
    invoke-static {p0, p2, p1, p3}, Lcom/miui/home/launcher/Launcher;->access$11101(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$updateShortcut$43(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Landroid/content/Intent;)V
    .locals 1

    .line 6853
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6854
    invoke-virtual {v0, p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->updateNormalShortcut(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateStatusBarClock$21(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 5313
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$I23MYObdCYWKn4oPK5yIlnoxm7g;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$I23MYObdCYWKn4oPK5yIlnoxm7g;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadPaView()V
    .locals 3

    .line 1855
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    .line 1856
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    if-eqz v1, :cond_0

    const-string v0, "Launcher"

    const-string v1, "loadPaView module is loading"

    .line 1857
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1860
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 1861
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    const-string v1, "Launcher"

    const-string v2, "loadPaView start"

    .line 1863
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$bpMTHpWFbTdXTpJ8y2kNQZ7duGM;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$bpMTHpWFbTdXTpJ8y2kNQZ7duGM;-><init>(Lcom/miui/home/launcher/module/ModuleManagerCompat;)V

    new-instance v0, Lcom/miui/home/launcher/Launcher$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$8;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private locateApp(Ljava/lang/String;)Z
    .locals 6

    .line 2473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2476
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2477
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2478
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 2481
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2482
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 2485
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2486
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 2488
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2489
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->hideSceneScreen(Z)V

    .line 2491
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    .line 2492
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2495
    :cond_5
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 2496
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 2497
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2498
    new-instance v3, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForUserId(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 2499
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2501
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2502
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v4, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 2504
    :cond_6
    sget-object v4, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2505
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v4, v5, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 2507
    :cond_7
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2508
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onStartHighlightLocatedApp()V

    return v2

    :cond_8
    const/4 v3, 0x2

    .line 2513
    new-array v3, v3, [Ljava/lang/Integer;

    .line 2514
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 2513
    invoke-virtual {p0, p1, v0, v3}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 2516
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2517
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    :cond_9
    if-eqz v0, :cond_a

    .line 2519
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2520
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

    .line 2549
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2550
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 2551
    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->getSnapToScreenIndexForLocate(Lcom/miui/home/launcher/ItemInfo;)I

    move-result v2

    .line 2552
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v0

    .line 2553
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/lit16 v6, v5, 0x12c

    if-eqz v3, :cond_3

    .line 2554
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Workspace;->getScreenSnapMaxDuration()I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    add-int/2addr v6, v7

    .line 2556
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2557
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v7, v4}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I

    .line 2560
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

    .line 2568
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/home/launcher/Launcher$16;

    invoke-direct {v7, p0, v1, p1, v5}, Lcom/miui/home/launcher/Launcher$16;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ShortcutInfo;I)V

    int-to-long v5, v6

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_6
    return v0

    .line 2562
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$15;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$15;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    int-to-long v5, v6

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    if-eqz v3, :cond_8

    .line 2618
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

    .line 4498
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f10002e

    .line 4499
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const v0, 0x7f10002d

    .line 4501
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private needCancelBackAnimationWhenWorkspaceScroll()Z
    .locals 3

    .line 6998
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6999
    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 7000
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

    .line 7368
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7369
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7370
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

    .line 6373
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 6374
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendPresentCommand(Landroid/view/ViewGroup;)V

    .line 6375
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendPresentCommand(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private notifyFsGuestureHomeStatus(Z)V
    .locals 2

    .line 8152
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8153
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$80;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$80;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8162
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

    .line 8164
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private notifyGadgetStateChanged(I)V
    .locals 6

    .line 1454
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1455
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 1456
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1482
    :pswitch_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_1

    .line 1479
    :pswitch_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_1

    .line 1476
    :pswitch_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_1

    .line 1473
    :pswitch_3
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    goto :goto_1

    .line 1468
    :pswitch_4
    iget-wide v2, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1469
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_1

    .line 1465
    :pswitch_5
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 1462
    :pswitch_6
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    goto :goto_1

    .line 1459
    :pswitch_7
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1487
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1488
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

    .line 1490
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

    .line 4282
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    return-void
.end method

.method private onDarkModeChanged()V
    .locals 6

    .line 8385
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8386
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->onDarkModeChanged()V

    .line 8387
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 8389
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz v0, :cond_1

    .line 8390
    invoke-virtual {v0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->onDarkModeChanged()V

    .line 8391
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 8393
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->createAllSystemShortcutMenuItems()V

    .line 8394
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    const-string v2, "color_mode"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8395
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8396
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

    .line 8397
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v1, p0, v4}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeNewHomeView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/FeedTransController;)V

    .line 8398
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragLayer;->getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v1, v4, v5}, Lcom/miui/home/launcher/view/HomeFeedContainer;->createNewHomeView(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/touch/FeedTransController;)V

    if-eqz v0, :cond_3

    .line 8400
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->autoShowHideFeed(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 8403
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8405
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onDarkModeChange()V

    .line 8407
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    .line 8408
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAllAppWidgetOptions()V

    .line 8409
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_5

    .line 8410
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDarkModeChanged()V

    :cond_5
    return-void
.end method

.method private onLauncherComeBackFromOtherApp(Ljava/lang/String;)V
    .locals 1

    .line 7116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7117
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

    .line 6764
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6765
    instance-of v0, v0, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-eqz v0, :cond_0

    .line 6766
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    return-void

    :cond_1
    return-void
.end method

.method public static performLayoutNow(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 7497
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7498
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7497
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 7499
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

    .line 5964
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

    .line 5966
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

    .line 6399
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->shouldShowUserPresentAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6400
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->prepareAnimation()V

    .line 6401
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->prepareUserPresentAnimation()V

    :cond_0
    return-void
.end method

.method private prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
    .locals 9

    .line 7673
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkDuplicateIconWhenRecommendAdded(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 7676
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7677
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getMarketPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->container:J

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V

    const/4 v2, 0x0

    .line 7679
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setStarted(Z)V

    .line 7680
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 7681
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7682
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7683
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->bindAppProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z

    return-object v0
.end method

.method private prepareSceneMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 2793
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2794
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f100176

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x42

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 2796
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f10017a

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x45

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :goto_0
    const/4 v0, 0x1

    .line 2798
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2799
    invoke-interface {p1, v0, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return v0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 3

    const/4 v0, 0x0

    .line 1146
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

    .line 1147
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1148
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1149
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1157
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

    .line 1160
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

    .line 5852
    invoke-static {}, Lcom/miui/launcher/utils/MamlUtils;->clearMamlCache()V

    .line 5853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5854
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    .line 5855
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

    .line 5856
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-nez v3, :cond_0

    .line 5858
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5859
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5861
    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5863
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

    .line 5864
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

    .line 5952
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

    .line 5954
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

    .line 5842
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$NL1GIJO3Eh6wpYu9aSZmW-NllzQ;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$NL1GIJO3Eh6wpYu9aSZmW-NllzQ;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 4

    .line 3623
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 3624
    new-instance v0, Lcom/miui/home/launcher/Launcher$40;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$40;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3742
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PRIVACY_MODE_CHANGED"

    .line 3743
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3744
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3745
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android_secret_code"

    .line 3746
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3747
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3748
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.finger.fast.unlock"

    .line 3749
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3750
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3751
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3752
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3753
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SYSTEM_UI_VISIBILITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3754
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3755
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.miui.REQUEST_LOCKSCREEN_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3756
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3757
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3758
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3759
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.mihomemanager.clearMiuiHome"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3760
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3761
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3762
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3763
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.action.appcompatibility.update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3764
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3765
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3766
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3767
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3768
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3769
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isSupportDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3770
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3771
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3773
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 3774
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.ad.PREINSTALL_AD_UPDATING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3775
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private registerContentObservers()V
    .locals 6

    .line 3191
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3192
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "miui_home_screen_cells_size"

    .line 3195
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 3194
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "key_miui_mod_icon_enable"

    .line 3198
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    .line 3197
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "light_speed_app"

    .line 3200
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_wallpaper_provider_authority"

    .line 3202
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    .line 3201
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "miui_home_lock_screen_cells"

    .line 3205
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    .line 3204
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "force_fsg_nav_bar"

    .line 3208
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    .line 3207
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "button_voice_service"

    .line 3211
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    .line 3210
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "QSB_SCROLL_OPTION_STATUS"

    .line 3212
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "QSB_SCROLL_ENTRANCE_STATUS"

    .line 3214
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launchMiBrowserWhileSwipe"

    .line 3216
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launcher_pulldown_gesture"

    .line 3218
    invoke-static {v1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launcher_slideup_gesture"

    .line 3220
    invoke-static {v1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "com.miui.newhome.preferences.key_can_use_new_home"

    .line 3222
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "delete_sound_effect"

    .line 3224
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "open_personal_assistant"

    .line 3226
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "elderly_mode"

    .line 3228
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_0
    const-string v1, "content://com.miui.securitycenter.provider/update_privacyapps_icon"

    .line 3232
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    .line 3231
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3235
    :catch_0
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isSupportDualClock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 3236
    new-instance v1, Lcom/miui/home/launcher/Launcher$DualClockObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/Launcher$DualClockObserver;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    const-string v1, "auto_dual_clock"

    .line 3237
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "resident_id"

    .line 3239
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "resident_timezone"

    .line 3241
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3244
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3245
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerSearchBarObserver()V

    .line 3247
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "darken_wallpaper_under_dark_mode"

    .line 3248
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3251
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "is_default_icon"

    .line 3252
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3254
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3255
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->registerAnimDurationRatioObserver(Landroid/content/ContentResolver;)V

    .line 3257
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "freeform_window_state"

    .line 3258
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3260
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v1, "freeform_package_name"

    .line 3261
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3263
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3265
    :cond_4
    invoke-static {}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSystemAnimationObserverUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3267
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerSearchBarObserver()V
    .locals 4

    .line 3319
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 3320
    new-instance v0, Lcom/miui/home/launcher/Launcher$SearchBarObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$SearchBarObserver;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    .line 3321
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

    .line 5056
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

    .line 5059
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

    .line 3791
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
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

    .line 7845
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7846
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7847
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7848
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7849
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    .line 7850
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v3

    if-nez v3, :cond_0

    .line 7851
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7854
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

    .line 7855
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7856
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    goto :goto_1

    .line 7858
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 7859
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 4

    .line 2224
    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2225
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    const/4 v0, 0x0

    .line 2227
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

    .line 2228
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 2234
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2235
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 2236
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 2237
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2239
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2242
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 2243
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_3
    return-void
.end method

.method private removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4845
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4846
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/miui/home/launcher/Workspace;

    if-eqz v2, :cond_0

    .line 4847
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Workspace;->onDragStarted(Landroid/view/View;)V

    .line 4849
    :cond_0
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/miui/home/launcher/Folder;

    if-eqz v2, :cond_1

    .line 4850
    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    .line 4851
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4852
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 4853
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4854
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/FolderIcon;->loadItemIcons(Z)V

    .line 4857
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

    .line 4999
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cleanUp()V

    .line 5000
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x4

    .line 5001
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5002
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    return-void
.end method

.method private reportLockWallpaperFail()V
    .locals 3

    .line 3921
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "set_lock_wallpaper_result"

    const/4 v2, 0x0

    .line 3922
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3923
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private requestGlobalFoldersPreinstallAd()V
    .locals 3

    .line 3782
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

    .line 3783
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    .line 3784
    instance-of v2, v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    if-eqz v2, :cond_0

    .line 3785
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

    .line 7436
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 7439
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7440
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 7443
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 7444
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 7445
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p2}, Lcom/miui/home/launcher/DragController;->isAppDragging(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7446
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    return-void

    :cond_3
    return-void
.end method

.method private resetScreenContent()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2027
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 2028
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 2029
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    const/4 v0, 0x3

    .line 2030
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

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$DofyruqSAot7EAOag7VOpEfKZYU;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$DofyruqSAot7EAOag7VOpEfKZYU;

    .line 2031
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

    .line 6254
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 6257
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 6258
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

    .line 6259
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 6260
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6261
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 6263
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

    .line 6264
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

    .line 6269
    iget v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 6270
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {p0, v2, v5, v3, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6271
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->clearRestore()V

    .line 6272
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 6273
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    if-eqz v2, :cond_1

    .line 6274
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

    .line 4187
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(%.1f,%.1f)"

    const/4 v1, 0x2

    .line 4188
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

    .line 4189
    new-array v1, v1, [Ljava/lang/Object;

    .line 4190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4189
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V

    .line 4191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 4192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const-string p1, "Launcher_dispatchTouchEvent"

    .line 4193
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->printAndClearMessage(Ljava/lang/String;)V

    const-string p1, "Launcher_Scrollto"

    .line 4194
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->printAndClearMessage(Ljava/lang/String;)V

    const-string p1, ""

    .line 4195
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 4595
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sceneOptionItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2817
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    .line 2818
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 2830
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->hideSceneScreen(Z)V

    return v1

    .line 2827
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reset()V

    return v1

    .line 2820
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2821
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditMode()V

    goto :goto_0

    .line 2823
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

    .line 6381
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6382
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6383
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_1

    .line 6384
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 6385
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

    .line 1045
    :try_start_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needHideMinusScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1046
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1047
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

    .line 1050
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1051
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eq v1, v2, :cond_1

    .line 1052
    const-class v1, Landroid/graphics/Canvas;

    const-string v2, "setCompatibilityVersion"

    const-class v3, Ljava/lang/Void;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1053
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 1052
    invoke-static {v1, v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "setCompatibilityVersionIfNeed"

    .line 1057
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private setErrorBarBackground()V
    .locals 2

    .line 1092
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800bb

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1094
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

    .line 4019
    invoke-static {p0, v1}, Lcom/miui/launcher/utils/PortableUtils;->getCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4020
    new-instance v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;

    invoke-direct {v3}, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;-><init>()V

    const/4 v4, 0x1

    .line 4021
    iput v4, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->mode:I

    .line 4022
    invoke-static {v2}, Lcom/miui/home/launcher/common/JsonUtils;->getWallpaperInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    move-result-object v2

    iput-object v2, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->currentWallpaperInfo:Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    .line 4023
    iput-boolean p4, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->needLast:Z

    .line 4024
    invoke-static {v3}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonStringFromRequestInfo(Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;)Ljava/lang/String;

    move-result-object p4

    .line 4025
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "force_refresh"

    .line 4026
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "extra_current_provider"

    .line 4027
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "request_json"

    .line 4028
    invoke-virtual {v2, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4030
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

    .line 4033
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

    .line 4036
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4039
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 4040
    invoke-static {p2}, Lcom/miui/home/launcher/common/JsonUtils;->getResultInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 4044
    :cond_2
    iget-object p1, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->wallpaperInfos:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 4045
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_3

    goto :goto_1

    .line 4048
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    .line 4049
    iget-object p2, p1, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;->wallpaperUri:Ljava/lang/String;

    .line 4050
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v0

    .line 4053
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4054
    invoke-static {p1}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonObjectFromWallpaperInfo(Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4055
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

    .line 4057
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4058
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    return v0

    .line 4061
    :cond_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p1, ""

    .line 4062
    invoke-static {p0, p1, v1}, Lcom/miui/launcher/utils/PortableUtils;->updateCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4064
    :goto_2
    invoke-static {p2, v4}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaper(Landroid/net/Uri;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4066
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private setScreenContentAlpha(F)V
    .locals 1

    .line 2013
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->setAlpha(F)V

    .line 2014
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBar;->setAlpha(F)V

    .line 2015
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setAlpha(F)V

    return-void
.end method

.method private setupAnimations()V
    .locals 3

    const v0, 0x7f01002b

    .line 1907
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    .line 1908
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/common/CubicEaseInOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/CubicEaseInOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const v0, 0x7f01002c

    .line 1909
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    const v0, 0x7f010024

    .line 1910
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    .line 1911
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1912
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewEnterAnim:Landroid/view/animation/Animation;

    const v0, 0x7f010025

    .line 1913
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    .line 1914
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/Launcher$9;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$9;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1930
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$10;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$10;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    .line 1947
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$49olfkyiDVHYD2WTQphfKJ83Rzo;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$49olfkyiDVHYD2WTQphfKJ83Rzo;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1950
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    .line 1951
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1952
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1953
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1954
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$11;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$11;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1965
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$12;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$12;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1975
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$oQp6NMjnyK_DA-uy4MAy0awe8CM;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$oQp6NMjnyK_DA-uy4MAy0awe8CM;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1976
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$8fxjfdpJa1wlHPvgpSbLjGDnOe0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$8fxjfdpJa1wlHPvgpSbLjGDnOe0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1977
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

    .line 1815
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    const v1, 0x7f0a014e

    if-eqz v0, :cond_0

    .line 1816
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    .line 1817
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/RecentsContainer;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1818
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    goto :goto_0

    .line 1819
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1821
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

    .line 1823
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setupViews()V
    .locals 3

    .line 1684
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a009d

    .line 1686
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragLayer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v0, 0x7f0a009e

    .line 1687
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Background;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    .line 1688
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1689
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1690
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragLayer;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    const v0, 0x7f0a0166

    .line 1692
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/search/SearchEdgeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    const v0, 0x7f0a0167

    .line 1693
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FitSystemWindowView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const v0, 0x7f0a0200

    .line 1694
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    .line 1695
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setDragController(Lcom/miui/home/launcher/DragController;)V

    const v0, 0x7f0a00b6

    .line 1697
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    .line 1698
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1699
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a00bb

    .line 1701
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ErrorBar;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    .line 1702
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ErrorBar;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1703
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setErrorBarBackground()V

    .line 1704
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1706
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a0208

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Workspace;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1707
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1708
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1710
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a0209

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    .line 1711
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1712
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1713
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    .line 1714
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1716
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1717
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1718
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1719
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    .line 1720
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setResource(Lcom/miui/home/launcher/Workspace;)V

    .line 1721
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setResource(Lcom/miui/home/launcher/Workspace;)V

    .line 1723
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DropTargetBar;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 1724
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v1, 0x7f0a00ca

    .line 1726
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderCling;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 1727
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/FolderCling;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1728
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderCling;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1729
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1731
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a0170

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/SearchBar;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    .line 1732
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a00e3

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/HotSeats;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    .line 1733
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/HotSeats;->setLaucher(Lcom/miui/home/launcher/Launcher;)V

    .line 1734
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/HotSeats;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1735
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1737
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    .line 1738
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setScrollView(Landroid/view/View;)V

    .line 1739
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 1740
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 1741
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 1742
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V

    .line 1743
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V

    .line 1744
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    .line 1746
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1747
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1748
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1749
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DropTargetBar;->setup(Lcom/miui/home/launcher/DragController;)V

    .line 1751
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupAnimations()V

    .line 1752
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const v0, 0x7f0a0194

    .line 1753
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutMenuLayer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    .line 1754
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 1755
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    const v0, 0x7f0a012e

    .line 1756
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/MinusOneScreenView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    const v0, 0x7f0a00b3

    .line 1758
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    .line 1759
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->setTopMenu(Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;)V

    .line 1760
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a012d

    .line 1761
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    .line 1762
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1763
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1766
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    .line 1767
    new-instance v0, Lcom/miui/home/launcher/Launcher$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$6;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    const v0, 0x7f0a0168

    .line 1774
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/ScrimView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    const v0, 0x7f0a0057

    .line 1775
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 1776
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const v1, 0x7f0a0177

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->initialize(Lcom/miui/home/launcher/ExtendedEditText;)V

    .line 1777
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    .line 1778
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setupViews(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V

    .line 1779
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a0171

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    .line 1780
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->setupViews()V

    .line 1781
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    const v1, 0x7f0a0115

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->setupView(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    .line 1783
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupRecentsViews()V

    .line 1785
    invoke-static {}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1786
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    .line 1787
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    .line 1790
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupWallpaperZoomManager()V

    return-void
.end method

.method private setupWallpaperZoomManager()V
    .locals 3

    .line 1794
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1795
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

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    new-instance v1, Lcom/miui/home/launcher/Launcher$7;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$7;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private shouldShowUserPresentAnimation()Z
    .locals 1

    .line 6391
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    if-eqz v0, :cond_0

    .line 6392
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 6393
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6394
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6395
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

    .line 5370
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

    .line 5371
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-eqz p2, :cond_2

    const/4 v1, 0x4

    .line 5372
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5374
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private showEditPanel(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5359
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setEnterEditingMode()V

    goto :goto_0

    .line 5361
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setExitEditingMode()V

    .line 5363
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5364
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->showBottomAreaEditPanelIfNeed(Landroid/view/View;Z)V

    .line 5365
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->showBottomAreaEditPanelIfNeed(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private showSceneScreenCore(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 3

    const/4 v0, 0x1

    .line 4904
    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sEnteredSceneScreen:Z

    .line 4905
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4907
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/DragController;->addDropTarget(ILcom/miui/home/launcher/DropTarget;)V

    .line 4908
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onShowAnimationStart()V

    .line 4909
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setTranslationY(F)V

    .line 4910
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/Launcher$48;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$48;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showUpsideEnterOrExitTipIfNeed(Z)Z
    .locals 8

    .line 6310
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6311
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 6315
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-string v3, "pref_freestyle_last_modified_time"

    const-wide/16 v4, 0x0

    .line 6316
    invoke-static {p0, v3, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    const-string v3, "pref_is_shown_upside_enter_tip"

    .line 6318
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "pref_is_shown_upside_exit_tip"

    .line 6319
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "pref_freestyle_last_modified_time"

    .line 6320
    invoke-static {p0, v3, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "pref_is_shown_upside_enter_tip"

    goto :goto_0

    :cond_2
    const-string v0, "pref_is_shown_upside_exit_tip"

    .line 6325
    :goto_0
    invoke-static {p0, v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 6326
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSnapshotMode()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    const v1, 0x7f0800e0

    goto :goto_1

    :cond_4
    const v1, 0x7f0800e1

    :goto_1
    if-eqz p1, :cond_5

    const p1, 0x7f100119

    goto :goto_2

    :cond_5
    const p1, 0x7f10011a

    .line 6332
    :goto_2
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v4, -0x56000000

    .line 6333
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6335
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6336
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6338
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6, v6}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;II)V

    .line 6339
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x31

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 6341
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6342
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

    .line 6343
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6345
    invoke-direct {p0, v2, p1, v4}, Lcom/miui/home/launcher/Launcher;->showUserGuideInner(IILandroid/view/View;)Lmiui/widget/ArrowPopupWindow;

    move-result-object p1

    .line 6347
    new-instance v1, Lcom/miui/home/launcher/Launcher$60;

    invoke-direct {v1, p0, v3}, Lcom/miui/home/launcher/Launcher$60;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v1}, Lmiui/widget/ArrowPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, 0x1

    .line 6354
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return p1

    :cond_6
    :goto_3
    return v2
.end method

.method private showUserGuideInner(IILandroid/view/View;)Lmiui/widget/ArrowPopupWindow;
    .locals 3

    .line 6359
    new-instance v0, Lmiui/widget/ArrowPopupWindow;

    invoke-direct {v0, p0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;)V

    .line 6360
    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setArrowMode(I)V

    .line 6361
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6362
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

    .line 6363
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 6364
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 6365
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 6366
    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 6367
    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    const/4 p1, 0x0

    .line 6368
    invoke-virtual {v0, p3, p1, p1}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-object v0
.end method

.method private startAndBindServiceIfNeed()V
    .locals 1

    .line 8169
    sget-boolean v0, Lcom/miui/home/library/utils/SdkVersion;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    return-void

    .line 8172
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$81;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$81;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startLockWallpaperPreviewActivity(J)V
    .locals 3

    .line 3834
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3837
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$43;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$43;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    .line 3917
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

    .line 2447
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    goto :goto_0

    .line 2451
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    sub-long/2addr v0, v4

    .line 2452
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 2454
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    .line 2456
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_double_home_availability"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.tsmclient"

    .line 2458
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "event_source"

    const-string v2, "com_miui_home"

    .line 2459
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2460
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "startMiPay"

    .line 2463
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2467
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

    .line 750
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 751
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

    .line 5217
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 5220
    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeThumbnailView;->hide()V

    :cond_1
    if-eqz p1, :cond_2

    .line 5224
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->prepareToShow()V

    .line 5225
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->show()V

    .line 5228
    :cond_2
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    return-void
.end method

.method private tellAllFoldersWhenAppAdded(Ljava/lang/String;)V
    .locals 3

    .line 7600
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

    .line 7601
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onAppAdded(Ljava/lang/String;)V

    .line 7602
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onAppAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transIcon(FIIZ)V
    .locals 4

    .line 7986
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    if-eqz v0, :cond_0

    .line 7987
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconImageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    .line 7988
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

    .line 7989
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

    .line 7991
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

    .line 7992
    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 7993
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    div-float/2addr p2, p1

    invoke-interface {v0, p2}, Lcom/miui/home/launcher/IBackAnimView;->setTranslationX(F)V

    .line 7994
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    div-float/2addr p3, p1

    invoke-interface {p2, p3}, Lcom/miui/home/launcher/IBackAnimView;->setTranslationY(F)V

    if-eqz p4, :cond_0

    .line 7995
    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    if-nez p1, :cond_0

    .line 7996
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    const-string p2, "back_home_finish"

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/IBackAnimView;->updateBackAnim(Ljava/lang/String;)V

    .line 7997
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    :cond_0
    return-void
.end method

.method private tryToAddSourceBounds(Landroid/content/Intent;Landroid/view/View;)V
    .locals 6

    if-eqz p2, :cond_1

    .line 4507
    instance-of v0, p2, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 4508
    check-cast p2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p2

    .line 4510
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4511
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v1, v1, v2

    .line 4512
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    aget v2, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4511
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 2

    .line 4290
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

    .line 4291
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->unbind()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private uninstallCleanButton()V
    .locals 2

    .line 6861
    new-instance v0, Lcom/miui/home/launcher/Launcher$63;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$63;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 6868
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private uninstallPowerCleanButton()V
    .locals 2

    .line 6872
    new-instance v0, Lcom/miui/home/launcher/Launcher$64;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$64;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 6879
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 3271
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3272
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3273
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3274
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3275
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3276
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3277
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3278
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3279
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3280
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3281
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3282
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3283
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3284
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3285
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3286
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3288
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3291
    :catch_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 3292
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    .line 3293
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    .line 3295
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterSearchBarObserver()V

    .line 3296
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3297
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3299
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3300
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3301
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->unregisterAnimDurationRatioObserver(Landroid/content/ContentResolver;)V

    .line 3303
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3304
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3305
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3307
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterSearchBarObserver()V
    .locals 2

    .line 3327
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3328
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3329
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private updateAllAppWidgetOptions()V
    .locals 4

    .line 8309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8310
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

    .line 8311
    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_0

    .line 8312
    iget-object v2, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAppsView()V
    .locals 3

    .line 5938
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

    .line 5939
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

    .line 3528
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->getBooleanValueFromMiuiSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpen:Z

    return-void
.end method

.method private updateScreenAlphaAndScale(FF)V
    .locals 1

    .line 7949
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/Launcher;->changeViewByFsGestureState(Landroid/view/View;FF)V

    .line 7950
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7951
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setAlphaAndScale(FF)V

    .line 7953
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7954
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

    .line 6839
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 6842
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    const-string p1, "Launcher"

    const-string v0, "The extra shortcut intent is null. Failed to update shortcut."

    .line 6844
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6847
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    const/4 v2, 0x0

    .line 6848
    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithIntent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6849
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6852
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$aADLWyzZaSR6wyuW1eCsTZdueFc;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$aADLWyzZaSR6wyuW1eCsTZdueFc;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "Launcher"

    const-string v0, "Can\'t find shortcutInfo. Failed to update shortcut."

    .line 6850
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

    .line 3442
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3443
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

    .line 3444
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3445
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3446
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private waitForAllIconsFinishLoading()V
    .locals 4

    .line 5744
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$55;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$55;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    .line 5757
    invoke-virtual {v2}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->getWaitTime()J

    move-result-wide v2

    .line 5744
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 4

    const/4 v0, 0x0

    .line 1168
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

    .line 1169
    :try_start_1
    iget-object v0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1170
    iget v0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1171
    iget p1, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1172
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1188
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

    .line 1177
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 1188
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

    .line 1191
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

    .line 2941
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2944
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

    .line 2948
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    .line 2949
    iget v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    .line 2950
    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    iput-wide v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    .line 2952
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->addAppWidgetWithoutFindPlaceAgain(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I

    move-result p1

    return p1
.end method

.method public addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 13

    .line 5570
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5571
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->addRestoreAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void

    .line 5574
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "Launcher"

    .line 5576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindAppWidget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5579
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5580
    iget v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 5581
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p1, "Launcher"

    .line 5584
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

    .line 5589
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

    .line 5593
    :try_start_0
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v5, p0, v3, v4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "com.miui.notes"

    .line 5607
    iget-object v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5608
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.notes.action.REFRESH_WIDGET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.miui.notes"

    .line 5609
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5610
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5613
    :cond_2
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, p0, v4, v5}, Lcom/miui/home/launcher/Launcher;->updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    .line 5614
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5615
    iget-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5617
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    iget v8, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v9, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v10, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v11, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v12, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v12}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 5620
    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 5622
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    const-string v2, "Launcher"

    .line 5625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bound widget id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5625
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    const-string p1, "Launcher"

    .line 5601
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

    .line 5596
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

    .line 2957
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2958
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 2959
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2961
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    .line 2963
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p1

    const/4 v1, -0x1

    .line 2965
    :try_start_0
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v3, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2971
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    const-string v1, "Launcher"

    .line 2972
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

    .line 2973
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    .line 2974
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 2977
    :cond_1
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2978
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2980
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.DEFAULT"

    .line 2981
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "appWidgetId"

    .line 2982
    invoke-virtual {v5, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 2986
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    .line 2989
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 2990
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x5

    .line 2993
    invoke-virtual {p0, v0, v1, v5}, Lcom/miui/home/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return p1

    .line 2967
    :catch_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    const v0, 0x7f10010a

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    return v1
.end method

.method public addContactShortcutToQuickCallCellLayout(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;
    .locals 11

    .line 6553
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->canAddShortcutToQuickCallCellLayout()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->OVERFLOW:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-object p1

    .line 6555
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

    .line 6556
    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    .line 6557
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    .line 6558
    sget-object p1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-object p1
.end method

.method addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;
    .locals 9

    .line 3083
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 3085
    iget-wide v0, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3086
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f0d003e

    .line 3088
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    const-wide/16 v3, -0x64

    .line 3089
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 3090
    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move v8, p3

    .line 3089
    invoke-static/range {v1 .. v8}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    const-string v1, "Launcher"

    .line 3091
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

    .line 3093
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 3094
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v8

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 3093
    invoke-virtual/range {v2 .. v8}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 3095
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

    .line 3016
    invoke-static {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return-object v10

    :cond_0
    if-eqz p3, :cond_1

    .line 3018
    invoke-interface {p3, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    return-object v10

    :cond_1
    if-eqz p2, :cond_2

    .line 3021
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 3023
    :cond_2
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onAdded()V

    .line 3024
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 3025
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    iget v6, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iget v7, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 3027
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 3028
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3030
    iget-wide p2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_3

    .line 3031
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 3032
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 3034
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3035
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    .line 3037
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetProvider()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 3040
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetId()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    .line 3041
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3042
    :cond_5
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p3

    .line 3043
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setMtzMockWidgetId(I)V

    .line 3045
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

    .line 6477
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method addItem(Lcom/miui/home/launcher/ItemInfo;ZZZ)Landroid/view/View;
    .locals 11

    .line 6481
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 6482
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_0
    const/4 v1, 0x0

    .line 6485
    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 6486
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

    .line 6488
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->addShortcut(Lcom/miui/home/launcher/ShortcutInfo;ZZZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    goto :goto_0

    .line 6489
    :cond_2
    instance-of p2, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p2, :cond_3

    .line 6490
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p2

    .line 6491
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

    .line 6645
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V
    .locals 9

    const-wide/16 v0, -0x65

    .line 6649
    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, -0x1

    .line 6650
    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 6651
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 p2, -0x1

    .line 6652
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6654
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {p2}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v2

    if-gt p2, v2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    .line 6655
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/HotSeats;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6662
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V

    .line 6663
    iget-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    .line 6664
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    const/4 p2, 0x1

    .line 6666
    invoke-virtual {p0, p1, p2, p2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    if-eqz p4, :cond_4

    .line 6668
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 6657
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

    .line 6660
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

    .line 6545
    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    return-void
.end method

.method public addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p9

    .line 6597
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

    .line 6598
    iput-wide v0, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    move-wide/from16 v0, p2

    .line 6599
    iput-wide v0, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    move/from16 v0, p6

    .line 6600
    iput v0, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    move/from16 v0, p7

    .line 6601
    iput v0, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6602
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 6603
    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v12}, Lcom/miui/home/launcher/Workspace;->isPosValidate(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p8, :cond_3

    .line 6604
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6608
    :cond_0
    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v12, v14}, Lcom/miui/home/launcher/Workspace;->findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6610
    invoke-static/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    return-void

    .line 6612
    :cond_1
    iget-wide v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    return-void

    .line 6615
    :cond_2
    iget v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    iput v2, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 6616
    iget v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    iput v2, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6617
    iget-wide v1, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    iput-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v1, -0x64

    .line 6618
    iput-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 6619
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v1

    iput-boolean v1, v12, Lcom/miui/home/launcher/ItemInfo;->isLandscapePos:Z

    goto :goto_1

    .line 6605
    :cond_3
    :goto_0
    iget-object v0, v11, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6621
    :cond_4
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/miui/home/launcher/DeviceConfig;->correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V

    .line 6622
    iget-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const-string v0, "Launcher"

    .line 6623
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

    .line 6624
    iget-object v0, v11, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, v12}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_2

    .line 6625
    :cond_5
    invoke-virtual {v12, v0}, Lcom/miui/home/launcher/ItemInfo;->hasSamePosition(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6626
    iget-wide v2, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v4, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v6, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v7, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    const-string v0, "Launcher"

    .line 6627
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

    .line 6629
    :cond_6
    :goto_2
    instance-of v0, v12, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 6630
    move-object v0, v12

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    goto :goto_3

    .line 6631
    :cond_7
    instance-of v0, v12, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_8

    .line 6632
    move-object v0, v12

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    .line 6634
    invoke-virtual {p0, v12, v1, v0}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    .line 6636
    :goto_3
    instance-of v0, v13, Lcom/miui/home/launcher/common/ResultRunnable;

    if-eqz v0, :cond_9

    .line 6637
    move-object v0, v13

    check-cast v0, Lcom/miui/home/launcher/common/ResultRunnable;

    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/common/ResultRunnable;->setResult(Ljava/lang/Object;)V

    :cond_9
    if-eqz v13, :cond_a

    .line 6640
    invoke-interface/range {p9 .. p9}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public addMinusOneView()V
    .locals 1

    .line 5820
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    if-nez v0, :cond_0

    .line 5821
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->loadPaView()V

    :cond_0
    return-void
.end method

.method public addOnResumeCallback(Lcom/miui/home/launcher/Launcher$OnResumeCallback;)V
    .locals 1

    .line 1404
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrRemoveNewHome()V
    .locals 3

    .line 3504
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    return-void

    .line 3507
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3508
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3509
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->createNewHomeView(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/touch/FeedTransController;)V

    goto :goto_0

    .line 3512
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3513
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeNewHomeView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/FeedTransController;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addPreinstallAppToWorkspace(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 2

    .line 7651
    iget v0, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->itemType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    return-void

    .line 7653
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$74;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$74;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addRecommendAppToFolderWithDragAnimation(Landroid/view/View;)Z
    .locals 8

    .line 7626
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 7627
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7629
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7630
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v5

    .line 7631
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

    .line 7639
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7641
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 7642
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 7643
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 7644
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

    .line 5631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add restore widget to workspace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    new-instance v0, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    invoke-direct {v0, p0, p0, p1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    iput-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 5633
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5634
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5635
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5636
    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    iget v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v7, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v8, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v9, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 5638
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 5639
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method addShortcut(Lcom/miui/home/launcher/ShortcutInfo;ZZZ)Lcom/miui/home/launcher/ItemIcon;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6509
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6510
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6511
    instance-of v4, v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v4, :cond_0

    .line 6512
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 6513
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 6514
    iget-object v1, v0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    :cond_0
    const-string v2, "Launcher"

    .line 6516
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

    .line 6521
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v4, v1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6523
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6524
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 6525
    invoke-virtual {v2, v4, v5, v5}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    .line 6526
    iget-object v4, v0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    new-instance v5, Lcom/miui/home/launcher/-$$Lambda$Launcher$xej0C7dI93wlNTQDzAp02DlVtY8;

    invoke-direct {v5, v0, v2, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$xej0C7dI93wlNTQDzAp02DlVtY8;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ShortcutInfo;)V

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$-ODAJCIiM0gK8jT24NkmqCZ2NPQ;

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-direct {v2, v0, v1, v14, v15}, Lcom/miui/home/launcher/-$$Lambda$Launcher$-ODAJCIiM0gK8jT24NkmqCZ2NPQ;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;ZZ)V

    invoke-virtual {v4, v5, v2}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->inflateViewAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    const-string v2, "Launcher"

    .line 6530
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

    .line 6534
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 6535
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v7

    .line 6536
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

    .line 7294
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 7295
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZkMOXh51lXxELfIHnQt8M9QhzCU;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZkMOXh51lXxELfIHnQt8M9QhzCU;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 7296
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 7297
    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez v1, :cond_0

    .line 7298
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$eR_KYe-1rVW1SXHLDPReBKmK6ls;

    invoke-direct {v1, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$eR_KYe-1rVW1SXHLDPReBKmK6ls;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/LauncherApplication;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 7301
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 7302
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public alreadyHasGadget(I)Z
    .locals 2

    .line 3053
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

    .line 3054
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

    .line 8818
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    if-eqz v0, :cond_0

    .line 8819
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->animateWallpaperZoom(Z)V

    :cond_0
    return-void
.end method

.method public appendWorkspaceTransitionType(I)V
    .locals 1

    .line 5235
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->appendScreenTransitionType(I)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 774
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public autoCategoryAllIcons()V
    .locals 1

    .line 1850
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1851
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoCategoryAllIcons()V

    return-void
.end method

.method public autoFillAllScreens()V
    .locals 1

    .line 1845
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1846
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoFillAllScreens()V

    return-void
.end method

.method public autoFillCurrentScreen()V
    .locals 1

    .line 1840
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1841
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoFillCurrentScreen()V

    return-void
.end method

.method public autoFolder()V
    .locals 13

    .line 7907
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7910
    invoke-direct {p0, v0, v1, v0}, Lcom/miui/home/launcher/Launcher;->dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V

    .line 7911
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->removeAllEmptyFoldersInCurrentScreen()V

    .line 7912
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/Workspace;->findCurrentScreenFirstVacantArea(II)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7914
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    const/4 v4, 0x0

    aget v5, v0, v4

    aget v6, v0, v1

    invoke-virtual {p0, v2, v3, v5, v6}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    .line 7915
    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 7916
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    aget v9, v0, v4

    aget v10, v0, v1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 7917
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/DragController;->autoDrop(Lcom/miui/home/launcher/DropTarget;)V

    :cond_1
    return-void
.end method

.method public autoScrollWorkspace()V
    .locals 1

    .line 5232
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

    .line 6111
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6114
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

    .line 6115
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    .line 6116
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToWorkspace(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v1, "Launcher"

    .line 6117
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

    .line 6118
    iget-wide v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 6119
    iget v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 6121
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

    .line 6122
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->isInstallToRecommendFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6123
    invoke-static {v1}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->removePackageName(Ljava/lang/String;)V

    const-string v1, "com.miui.home:string/default_folder_title_recommend"

    const/4 v2, 0x0

    .line 6124
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoByTitle(Ljava/lang/String;Z)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6126
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v2

    iput v2, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 6127
    iget-wide v1, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    iput-wide v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    :cond_4
    const-string v1, "Launcher"

    .line 6129
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

    .line 6131
    :cond_5
    iget-wide v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    iget-wide v6, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    iget v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v9, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const/4 v10, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6136
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

    .line 8530
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public bindAppInfosRemoved(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    .line 6203
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

    .line 6208
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 6209
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

    .line 6145
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

    .line 7415
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7416
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->resetDragItemIfNeed(Ljava/util/List;Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 7417
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 7418
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/Launcher;->pendingAllItems(Ljava/util/List;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7420
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7421
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->bindAppsRemoved(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 7423
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7424
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindAddedShortcuts(Ljava/util/List;)V

    .line 7425
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindAppsAdded(Ljava/util/List;)V

    .line 7426
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindWidgetsRestored(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 7427
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->pendingAllItems(Ljava/util/List;Z)V

    :cond_2
    if-eqz p3, :cond_3

    .line 7429
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7430
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Launcher;->bindAppsUpdated(Ljava/util/List;)V

    .line 7432
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

    .line 7376
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    .line 7377
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 7380
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$y96kWVsHJ5wSCRtst_jOCthwO8w;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$y96kWVsHJ5wSCRtst_jOCthwO8w;-><init>(Ljava/util/ArrayList;)V

    .line 7381
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$YylfrcYNr5BjXUa-SjeaaWq7s3w;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$YylfrcYNr5BjXUa-SjeaaWq7s3w;-><init>(Ljava/util/List;)V

    .line 7382
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$1d9c-NlZEYrBicmAHefcztv9yRE;

    invoke-direct {v2, p0, v1, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$1d9c-NlZEYrBicmAHefcztv9yRE;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/function/Supplier;Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 7397
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7398
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/stream/Stream;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$G2MIs-1UGGB894dJDdAUee7ejD8;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$G2MIs-1UGGB894dJDdAUee7ejD8;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    .line 7399
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

    .line 6150
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateApps(Ljava/util/List;)V

    .line 6151
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->bindShortcutsChangedOnAppUpdate(Ljava/util/List;)V

    return-void
.end method

.method public bindCategoryAdded()V
    .locals 1

    .line 8535
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryAdded()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 1

    .line 8555
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryNameUpdate()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 1

    .line 8550
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryOrderUpdate()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 1

    .line 8540
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryRemoved()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 1

    .line 8545
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

    .line 6294
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    .line 6295
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 6296
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setTranslationY(F)V

    return-void

    .line 6300
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 6301
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 6302
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    .line 6303
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 6304
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->cacheSceneScreenRef(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 6306
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

    .line 7487
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 7488
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    return-void
.end method

.method public bindItem(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 13

    .line 5550
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 5551
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5553
    :cond_0
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 5554
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    goto :goto_0

    .line 5555
    :cond_1
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->isFolderIdValid(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5556
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 5557
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    .line 5558
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 5559
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 5561
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

    .line 5564
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isPending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5565
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    :cond_3
    return-void
.end method

.method public bindScreenAdded(JII)V
    .locals 1

    .line 6215
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 6216
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Workspace;->bindScreenAdded(JII)V

    :cond_0
    return-void
.end method

.method public bindScreenRemoved(J)V
    .locals 1

    .line 6222
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 6223
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->bindScreenRemoved(J)V

    :cond_0
    return-void
.end method

.method public bindScreenTrim()V
    .locals 1

    .line 6229
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 6230
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

    .line 5476
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->firstLoadScreens(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 5478
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5479
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 5480
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5481
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

    .line 6195
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6197
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

    .line 6155
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

    .line 7469
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 7470
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

    .line 7471
    iget-wide v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 7472
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7474
    iget-wide v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    goto :goto_0

    .line 7478
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeShortcuts(Ljava/util/ArrayList;)V

    .line 7479
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->removeShortcuts(Ljava/util/ArrayList;)V

    .line 7480
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7481
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

    .line 6235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6236
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

    .line 6237
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6238
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6241
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6242
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

    .line 6243
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 6244
    invoke-static {v3, p0}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6245
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6246
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6250
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->restoreWidget(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blurBehindWithAnim(Z)V
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Background;->showUninstallBgColor(Z)V

    return-void
.end method

.method public canTouchControllerInterceptTouchEvent()Z
    .locals 8

    .line 4685
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    .line 4686
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    .line 4687
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v2

    .line 4688
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v3

    .line 4689
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4690
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

    .line 4691
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4695
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

    .line 4698
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

    .line 4641
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 4642
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 4643
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    return-void
.end method

.method public cancelHomeFeedContainerArrowAnim(Z)V
    .locals 1

    .line 8496
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_0

    .line 8497
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->cancelArrowAnim(Z)V

    :cond_0
    return-void
.end method

.method public cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V
    .locals 1

    const/4 v0, 0x0

    .line 5080
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public changeAlphaScale(FFIIIIZ)V
    .locals 7

    .line 8071
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

    .line 5212
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    const/4 v0, 0x0

    .line 5213
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    return-void
.end method

.method public changeHotseatsToEditingEntryView()V
    .locals 1

    const/4 v0, 0x1

    .line 5207
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 5208
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    return-void
.end method

.method public changeShortcutMenuLayerAlphaScale(FFIIZ)V
    .locals 2

    .line 8082
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    if-nez v0, :cond_0

    return-void

    .line 8085
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotX:I

    .line 8086
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotY:I

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 8087
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8088
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 8090
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->updateScreenAlphaAndScale(FF)V

    .line 8091
    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    if-eqz p1, :cond_2

    .line 8092
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/home/launcher/Launcher;->transIcon(FIIZ)V

    :cond_2
    return-void
.end method

.method public changeStatusBarMode()V
    .locals 3

    .line 5348
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    if-eqz v0, :cond_0

    return-void

    .line 5351
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher_WallpaperUtils"

    .line 5352
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

    .line 5353
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

    .line 7608
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 7609
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const v1, 0x7f100077

    const/16 v2, 0x1f4

    .line 7611
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 7612
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7613
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 7614
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

    .line 7922
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 7925
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    .line 7926
    iget-wide v6, v5, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-wide v6, v5, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    goto :goto_2

    .line 7930
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

    .line 7945
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

    .line 7130
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method

.method public clearLastLaunchApp()V
    .locals 1

    const/4 v0, 0x0

    .line 640
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method public closeAllOverLauncherWindow(Ljava/lang/String;)V
    .locals 1

    .line 2252
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    const/4 v0, 0x0

    .line 2254
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 2255
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 2256
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showTransitionMenu(Z)V

    .line 2257
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    .line 2258
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    .line 2259
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public closeFolder(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 7748
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 7749
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7750
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7751
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method closeFolder()Z
    .locals 1

    const/4 v0, 0x1

    .line 4637
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    move-result v0

    return v0
.end method

.method public closeFolder(Z)Z
    .locals 6

    .line 4647
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4648
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4649
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4650
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    const-string v2, "action_close_folder"

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4651
    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4652
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->cancelFolderAnimations()V

    const/4 v0, 0x1

    .line 4653
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 4654
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onFolderOpenOrClose()V

    .line 4655
    invoke-static {v1}, Lcom/miui/home/launcher/ShortcutIcon;->setEnableLoadingAnim(Z)V

    .line 4656
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->enableFolderInteractive(Z)V

    .line 4657
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->close(Z)V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 4659
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const v4, 0x3f7d70a4    # 0.99f

    const v5, 0x3e75c28f    # 0.24f

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)V

    .line 4660
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v3, v2, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)V

    .line 4661
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    .line 4662
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->fadeInOrOutScreenContentWhenFolderAnimate(Z)V

    goto :goto_0

    .line 4664
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->resetScreenContent()V

    .line 4666
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    .line 4667
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 4668
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 4669
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

    .line 2110
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2111
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeSelectToggle(I)V

    goto :goto_0

    .line 2113
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcutToggle(I)Landroid/view/View;

    :goto_0
    return-void
.end method

.method public createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 2

    .line 2036
    instance-of v0, p2, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    instance-of v0, p2, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2038
    :cond_0
    instance-of v0, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v0, :cond_1

    const v0, 0x7f0d0029

    .line 2039
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    goto :goto_1

    .line 2041
    :cond_1
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    const v0, 0x7f0d0026

    .line 2042
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    goto :goto_1

    .line 2043
    :cond_2
    instance-of v0, p2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_3

    const v0, 0x7f0d003e

    .line 2044
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

    .line 2037
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    .line 2047
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2048
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2049
    invoke-static {p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 2050
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

    .line 3100
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1
.end method

.method public createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;
    .locals 3

    .line 3104
    new-instance v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 3105
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/home/launcher/FolderInfo;->isLandscapePos:Z

    .line 3106
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3107
    sget-object p5, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p5, p0}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto :goto_0

    .line 3109
    :cond_0
    invoke-virtual {v0, p5, p0}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :goto_0
    const-wide/16 v1, -0x64

    .line 3113
    iput-wide v1, v0, Lcom/miui/home/launcher/FolderInfo;->container:J

    .line 3114
    iput-wide p1, v0, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    .line 3115
    iput p3, v0, Lcom/miui/home/launcher/FolderInfo;->cellX:I

    .line 3116
    iput p4, v0, Lcom/miui/home/launcher/FolderInfo;->cellY:I

    .line 3118
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 3119
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide p2, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3122
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

    .line 4102
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4103
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/touch/FeedTransController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 4106
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2bc

    if-eq v0, v3, :cond_2

    .line 4107
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2bd

    if-eq v0, v3, :cond_2

    .line 4108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2be

    if-ne v0, v3, :cond_3

    .line 4109
    :cond_2
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    .line 4110
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    if-eqz v0, :cond_3

    .line 4111
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)V

    .line 4115
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_6

    .line 4116
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_5

    const/16 v3, 0x19

    if-eq v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "debug.launcher2.dumpstate"

    .line 4120
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystemProperties(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 4121
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->dumpState()V

    return v2

    :cond_5
    return v2

    .line 4126
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4127
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_7

    goto :goto_0

    :cond_7
    return v2

    .line 4133
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 4162
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v0

    .line 4163
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4169
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4172
    :cond_1
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    const-string v0, ""

    .line 4173
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    .line 4175
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    .line 4176
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4178
    :cond_3
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/library/utils/CPUBooster;->boostTouch(Landroid/view/MotionEvent;)V

    .line 4179
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/common/ILauncherMonitor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 4180
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveMotionEventLog(Landroid/view/MotionEvent;)V

    .line 4181
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    const-string p1, "Launcher"

    .line 4165
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

    .line 8798
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/BaseActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8799
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/library/utils/CPUBooster;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8800
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherStateManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8801
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8802
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8804
    :cond_0
    invoke-static {p1, p3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8807
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object p1

    .line 8808
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/compat/LauncherCellCount;->dump(Ljava/io/PrintWriter;)V

    .line 8810
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Workspace;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8812
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "Launcher"

    .line 7507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7508
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

    .line 7509
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

    .line 7510
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

    .line 7511
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

    .line 7512
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

    .line 7513
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->dumpState()V

    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    .line 7514
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableFolderInteractive(Z)V
    .locals 1

    .line 4675
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4676
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->enableInteractive(Z)V

    :cond_0
    return-void
.end method

.method public exitMultiSelectEditModeIfNeed()V
    .locals 2

    .line 7826
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 7827
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 7828
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method public exitTogglesSelectView(Z)V
    .locals 1

    .line 2068
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    if-eqz v0, :cond_1

    .line 2069
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2070
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    .line 2073
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 2074
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    :cond_1
    return-void
.end method

.method public fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "Start filling empty cell"

    .line 6455
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6456
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Launcher"

    const-string v0, "The switch of auto filling empty doesn\'t turn on"

    .line 6457
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6461
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$62;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$62;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public finishBindingMissingItems()V
    .locals 0

    .line 5686
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkNewInstalledAppsBeStarted()V

    return-void
.end method

.method public finishBindingSavedItems()V
    .locals 11

    .line 5648
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5649
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 5651
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 5652
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5653
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 v0, 0x0

    .line 5656
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 5660
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5661
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReverseComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5662
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

    .line 5664
    iget-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v6, -0x64

    iget v8, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v9, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v10, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto :goto_0

    .line 5667
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5668
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshFolderIcons()V

    return-void
.end method

.method public finishLoading(ZZ)V
    .locals 7

    .line 5762
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5764
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 5765
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->waitForAllIconsFinishLoading()V

    const-string v1, "home_data_create_time_key"

    const-wide/16 v2, -0x1

    .line 5766
    invoke-static {p0, v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    .line 5767
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.intent.action.LOADING_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.securitycenter"

    .line 5768
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5769
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5771
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.intent.action.LOADING_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5772
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/high16 v2, 0x1000000

    .line 5773
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    const-string v2, "status"

    const-string v3, "finish"

    .line 5775
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launcher_mode"

    .line 5776
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.miui.home.launcher.permission.LOADING_STATUS"

    .line 5777
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5778
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needShowMisplacedTips()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5779
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5781
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->onLoadingFinished()V

    .line 5783
    new-instance v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mFreeStyleExists:Z

    .line 5784
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 5786
    sget-boolean v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v1, "jobscheduler"

    .line 5787
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 5788
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    .line 5789
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v4, 0x5265c00

    .line 5790
    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 5791
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 5794
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 5795
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 5797
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->afterShowUserPresentAnimation()V

    if-eqz p1, :cond_5

    .line 5800
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshProgressIcons()V

    goto :goto_0

    .line 5802
    :cond_5
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$Pngo_DKKRgVfGiGEXgwlF2ulN4g;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Pngo_DKKRgVfGiGEXgwlF2ulN4g;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 5803
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZFvivUCZcNuHa1CaF6RtcxTON4c;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZFvivUCZcNuHa1CaF6RtcxTON4c;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    :goto_0
    const-string p1, "Launcher"

    const-string v0, "show present anim"

    .line 5806
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5807
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->updatemIncompatibleAppList(Landroid/content/Context;)V

    .line 5808
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->requestCloudSettingsInfo()V

    .line 5809
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkInvalidateGadget()V

    if-eqz p2, :cond_6

    .line 5811
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->reloadClockIfNeed(Z)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method public forceHideErrorBar()V
    .locals 1

    .line 5006
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    return-void
.end method

.method public forceReload()V
    .locals 2

    .line 738
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->hideAppView()V

    .line 739
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    const/4 v0, 0x1

    .line 740
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 741
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/LauncherModel;->forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 742
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->resetMtzGadgetList()V

    const/4 v0, 0x0

    .line 743
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 744
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 745
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    :cond_0
    return-void
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1

    .line 8720
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;
    .locals 1

    .line 8571
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    return-object v0
.end method

.method public getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
    .locals 1

    .line 8580
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    return-object v0
.end method

.method public getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;
    .locals 1

    .line 8521
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

    .line 7286
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

    .line 7282
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

    .line 7271
    new-instance v0, Lcom/miui/home/launcher/Launcher$71;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$71;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 7277
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7278
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;
    .locals 1

    .line 8709
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;
    .locals 1

    .line 2208
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppWidgetManager()Landroid/appwidget/AppWidgetManager;
    .locals 1

    .line 2212
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

    .line 8525
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;
    .locals 1

    .line 8517
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    return-object v0
.end method

.method public getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;
    .locals 1

    .line 8477
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    return-object v0
.end method

.method public getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 7123
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7124
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactsColorizedPortraitController()Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;
    .locals 1

    .line 7290
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mContactsColorizedPortraitController:Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    return-object v0
.end method

.method public getCurrentDisplayRotation()I
    .locals 1

    .line 1547
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return v0
.end method

.method public getCurrentLightSpeedIconPackageName()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentOpenedFolder()Landroid/view/View;
    .locals 1

    .line 4718
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4719
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    return-object v0
.end method

.method public getDragController()Lcom/miui/home/launcher/DragController;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/miui/home/launcher/DragLayer;
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object v0
.end method

.method public getDragLayerBackground()Lcom/miui/home/launcher/Background;
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    return-object v0
.end method

.method public getDragSourceForCancelUninstall(Landroid/view/View;)Lcom/miui/home/launcher/DragSource;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 4829
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_3

    .line 4830
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4831
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4833
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInWorkspace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4834
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    return-object p1

    .line 4835
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4836
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1

    .line 4837
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInHotseat()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4838
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getDrawerHeaderElevationController()Lcom/miui/home/launcher/allapps/category/HeaderElevationController;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    return-object v0
.end method

.method public getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;
    .locals 1

    .line 5396
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    return-object v0
.end method

.method public getEditingState()I
    .locals 1

    .line 5044
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

    .line 685
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

    .line 8473
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    return-object v0
.end method

.method public getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;
    .locals 1

    .line 8469
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    return-object v0
.end method

.method public getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 7195
    new-instance v0, Lcom/miui/home/launcher/Launcher$68;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$68;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Z)V

    .line 7212
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7213
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p1
.end method

.method public getFolderCling()Lcom/miui/home/launcher/FolderCling;
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object v0
.end method

.method public getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 6442
    :cond_0
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 6443
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    return-object p1

    .line 6444
    :cond_1
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 6445
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

    .line 7586
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

    .line 7591
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

    .line 7592
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

    .line 7582
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    return-object v0
.end method

.method public getFsGestureCallbackSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    .locals 1

    .line 8097
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8098
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8099
    new-instance p2, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public getHomeDataCreateTime()J
    .locals 2

    .line 5048
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    return-wide v0
.end method

.method public getHotSeats()Lcom/miui/home/launcher/HotSeats;
    .locals 1

    .line 5392
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    return-object v0
.end method

.method public getLastLaunchApp()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 3

    const-string v0, "Launcher"

    .line 679
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

    .line 680
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public getLastMotionEventLocation()Ljava/lang/String;
    .locals 1

    .line 4200
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;
    .locals 1

    .line 3484
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    return-object v0
.end method

.method public getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 1

    .line 8575
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

    .line 6713
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6716
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6717
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6718
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 6719
    invoke-virtual {v0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p2

    .line 6714
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "packageName must not null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLoadingAsyncInflateManager()Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;
    .locals 1

    .line 5740
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

    .line 7217
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 7220
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7221
    new-instance p1, Lcom/miui/home/launcher/Launcher$69;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/Launcher$69;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    .line 7238
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7239
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

    .line 5340
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

    .line 7692
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    return-object v0
.end method

.method public getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;
    .locals 1

    .line 8489
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_0

    .line 8490
    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverLayoutProgress()F
    .locals 1

    .line 8276
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

    .line 8661
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    return-object v0
.end method

.method public getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 0

    .line 6451
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1
.end method

.method public getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;
    .locals 4

    .line 6431
    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 6433
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

    .line 8681
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    return-object v0
.end method

.method public getRecentsView()Lcom/miui/home/recents/views/RecentsView;
    .locals 1

    .line 8665
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8666
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

    .line 8686
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    return-object v0
.end method

.method public getRootViewRect()Landroid/graphics/Rect;
    .locals 5

    .line 8690
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8691
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 8692
    new-array v0, v0, [I

    .line 8693
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8694
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

    .line 8695
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

    .line 994
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    return-object v0
.end method

.method public getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;
    .locals 1

    .line 4874
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

    .line 4878
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

    .line 4879
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getScreen()Landroid/widget/FrameLayout;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object v0
.end method

.method public getScreenContent()Landroid/widget/FrameLayout;
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    return-object v0
.end method

.method public getScrimView()Lcom/miui/home/launcher/view/ScrimView;
    .locals 1

    .line 8605
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    return-object v0
.end method

.method public getSearchBar()Lcom/miui/home/launcher/SearchBar;
    .locals 1

    .line 8505
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    return-object v0
.end method

.method public getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;
    .locals 1

    .line 8509
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    return-object v0
.end method

.method public getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;
    .locals 1

    .line 5400
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object v0
.end method

.method public getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;
    .locals 1

    .line 780
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

    .line 7243
    array-length v0, p3

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7246
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7247
    new-instance p3, Lcom/miui/home/launcher/Launcher$70;

    invoke-direct {p3, p0, p2, v0, p1}, Lcom/miui/home/launcher/Launcher$70;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/util/ArrayList;Landroid/content/ComponentName;)V

    .line 7266
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7267
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

    .line 6692
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6693
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$zD5PYKnlVDkGJxnhD_98IhLBjsM;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$zD5PYKnlVDkGJxnhD_98IhLBjsM;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;
    .locals 1

    .line 7688
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    return-object v0
.end method

.method public getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    .line 7134
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onLauncherComeBackFromOtherApp(Ljava/lang/String;)V

    .line 7136
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getShowingShortcutIcon(Ljava/lang/String;I)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    .line 7137
    instance-of p2, p1, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 7138
    move-object p2, p1

    check-cast p2, Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    .line 7143
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setCurSelectedIcon(Lcom/miui/home/launcher/IBackAnimView;)V

    .line 7144
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v0

    .line 7148
    :cond_0
    new-instance p2, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$evSScUPddKUCeU3mEBbEfCzIQYc;

    invoke-direct {v1, p0, p1, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$evSScUPddKUCeU3mEBbEfCzIQYc;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;Landroid/graphics/Rect;)V

    invoke-direct {p2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 7183
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1f4

    .line 7185
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p3, "Launcher"

    .line 7186
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

    .line 7188
    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x1

    .line 7189
    invoke-virtual {p2, p3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :goto_1
    return-object p1

    .line 7140
    :cond_1
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0
.end method

.method public getShowingShortcutIcon(Ljava/lang/String;I)Lcom/miui/home/launcher/ItemIcon;
    .locals 8

    .line 6920
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

    .line 6921
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 6924
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->getComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6925
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 6927
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6928
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 6931
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x3

    .line 6935
    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/16 v4, 0xe

    .line 6936
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    .line 6935
    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6937
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    .line 6938
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v6, ""

    invoke-direct {v2, p1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Integer;

    .line 6939
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    .line 6938
    invoke-virtual {p0, v2, p2, p1}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    .line 6942
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_5

    goto :goto_0

    .line 6947
    :cond_5
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->getLastLaunchShortcutIcon(Ljava/util/List;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_1

    .line 6943
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_7

    .line 6944
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLastLaunchApp()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_8

    return-object v1

    .line 6952
    :cond_8
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result p2

    if-nez p2, :cond_c

    .line 6953
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 6954
    iget-wide p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 6955
    iget-wide v2, p1, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_9

    .line 6956
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v1

    .line 6959
    :cond_a
    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long p2, v2, v4

    if-nez p2, :cond_b

    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_b

    .line 6960
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 6961
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

    .line 6962
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 6964
    :cond_c
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_d

    .line 6965
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

    .line 982
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    return-object v0
.end method

.method public getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;
    .locals 1

    .line 8743
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    return-object v0
.end method

.method public getSpringLayerWaveController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;
    .locals 1

    .line 8739
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    return-object v0
.end method

.method public getStateManager()Lcom/miui/home/launcher/LauncherStateManager;
    .locals 1

    .line 8481
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    return-object v0
.end method

.method public getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;
    .locals 2

    .line 8598
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    if-nez v0, :cond_0

    .line 8599
    new-instance v0, Lcom/miui/home/launcher/util/SystemUiController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/SystemUiController;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    .line 8601
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    return-object v0
.end method

.method public getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;
    .locals 1

    .line 7696
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    return-object v0
.end method

.method public getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUninstallController:Lcom/miui/home/launcher/uninstall/UninstallController;

    return-object v0
.end method

.method public getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    return-object v0
.end method

.method public getUserUnlockController()Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;
    .locals 1

    .line 986
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

    .line 8648
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    return-object v0
.end method

.method public getWorkspace()Lcom/miui/home/launcher/Workspace;
    .locals 1

    .line 5384
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object v0
.end method

.method public getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;
    .locals 1

    .line 5388
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-object v0
.end method

.method public getWorkspacePreviousTransitionType()I
    .locals 1

    .line 5243
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getPreviousScreenTransitionType()I

    move-result v0

    return v0
.end method

.method public hasLaunchedAppsFromFolder()Z
    .locals 1

    .line 4710
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    return v0
.end method

.method public hasMoved()Z
    .locals 1

    .line 6985
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

    .line 8672
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 8673
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHideLandscapeShortcutMenuLayer:Z

    .line 8674
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha(F)V

    .line 8675
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const-string v0, "Launcher"

    const-string v1, "hideLandscapeShortcutMenuLayer"

    .line 8676
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public hideSceneScreen(Z)V
    .locals 5

    .line 4968
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4973
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 4974
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 4976
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onHideAnimationStart()V

    const-string v2, "translationY"

    .line 4978
    new-array v3, p1, [F

    .line 4979
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v1

    .line 4978
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4980
    new-instance v3, Lcom/miui/home/launcher/Launcher$51;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/Launcher$51;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4987
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 4989
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const-string v2, "translationY"

    new-array p1, p1, [F

    const/4 v3, 0x0

    aput v3, p1, v1

    invoke-static {v0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 4991
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 4993
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 4994
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    :goto_0
    return-void
.end method

.method public hideShortcutMenuWithoutAnim()V
    .locals 2

    .line 5075
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setWithoutAnimNextHide()V

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 5076
    invoke-virtual {p0, v1, v0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public inMultiSelectMode()Z
    .locals 2

    .line 4296
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4297
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4298
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

    .line 8629
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 8630
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 8631
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 8632
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 8633
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public invalidateWorkspacePreview()V
    .locals 2

    .line 7872
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7873
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7874
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public isActivityLocked()Z
    .locals 1

    .line 2931
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 2932
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

    .line 3533
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpen:Z

    return v0
.end method

.method public isBackCoverChanged()Z
    .locals 1

    .line 4097
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    return v0
.end method

.method public isBackNewHome()Z
    .locals 5

    const/4 v0, 0x1

    .line 2265
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "com.miui.newhome.base.Settings"

    .line 2266
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isBackNewHome"

    .line 2267
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    .line 2268
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2270
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

    .line 2272
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isCurrentScreenNeedAlignIconsToTop()Z
    .locals 1

    .line 5380
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

    .line 7879
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    if-eqz v0, :cond_0

    .line 7880
    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    .line 8584
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isDrawerMode()Z
    .locals 1

    .line 8588
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isElderlyManMode()Z
    .locals 1

    .line 8592
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isFolderAnimating()Z
    .locals 1

    .line 4714
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    return v0
.end method

.method public isFolderEditing()Z
    .locals 1

    .line 8656
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->isEditing()Z

    move-result v0

    return v0
.end method

.method public final isFolderIdValid(J)Z
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFolderOpenedBeforeResume()Z
    .locals 1

    .line 4706
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    return v0
.end method

.method public isFolderShowing()Z
    .locals 1

    .line 4681
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

    .line 4862
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFreeStyleExists:Z

    return v0
.end method

.method public isInDisableEditing()Z
    .locals 2

    .line 5040
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

    .line 5014
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

    .line 5036
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

    .line 5026
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing(I)Z

    move-result v0

    return v0
.end method

.method public isInQuickOrEditingModeExiting()Z
    .locals 2

    .line 5052
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

    .line 5018
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

    .line 8485
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

    .line 7708
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 7711
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

    .line 5329
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v0, :cond_0

    .line 5330
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

    .line 5335
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v0, :cond_0

    .line 5336
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

    .line 5344
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    return v0
.end method

.method public isMultiSelectEnabled()Z
    .locals 2

    .line 5022
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

    .line 8211
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    return v0
.end method

.method public isPreviewShowing()Z
    .locals 1

    .line 4866
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isQuickCallScreenShowing()Z
    .locals 1

    .line 6549
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isQuickCallScreenShowing()Z

    move-result v0

    return v0
.end method

.method public isSceneAnimating()Z
    .locals 1

    .line 5010
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    return v0
.end method

.method public isSceneShowing()Z
    .locals 1

    .line 4870
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

    .line 8513
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

    .line 690
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

    .line 998
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur(I)Z

    move-result v0

    return v0
.end method

.method public isShouldBlur(I)Z
    .locals 0

    .line 1002
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1003
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

    .line 5247
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isShowingTransitionEffectDemo()Z

    move-result v0

    return v0
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 1

    .line 705
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

    .line 2056
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

    .line 2936
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallAnimShowing()Z

    move-result v0

    return v0
.end method

.method public isUninstallDialogShowing()Z
    .locals 1

    .line 2922
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 8207
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    return v0
.end method

.method public isWidgetThumbnailViewShowing()Z
    .locals 1

    .line 7704
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

    .line 8652
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    return v0
.end method

.method public isWorkspaceLoading()Z
    .locals 1

    .line 2918
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .line 2926
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallAnimShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2927
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

    .line 4334
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    .line 4335
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v0, :cond_0

    const-string v0, "launch_from_folder"

    .line 4336
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackLaunchAppAfterBackToHome(Ljava/lang/String;)V

    .line 4338
    :cond_0
    invoke-static {p1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->recordLaunchApplicationEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    .line 4339
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 4340
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4341
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getTopActivityUserId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4342
    invoke-static {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->launchFullScreenFromFreeform(Landroid/content/Context;)V

    return-void

    .line 4345
    :cond_1
    invoke-static {p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->notifyStartActivity(Landroid/content/Intent;)V

    .line 4346
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->launch(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 4348
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    return-void
.end method

.method public notifyBackGestureStatus()V
    .locals 1

    .line 7518
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7519
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyFsGestureCallbackMiuiAnimationEnd()V
    .locals 0

    .line 8108
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationEnd()V

    return-void
.end method

.method public notifyFsGestureCallbackMiuiAnimationStart()V
    .locals 1

    .line 8103
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->showFsTransAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    .line 8104
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationStart()V

    return-void
.end method

.method public notifyHomeModeFsGestureStart()V
    .locals 2

    .line 8112
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8113
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8114
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeGestureStart()V

    :cond_0
    return-void
.end method

.method public notifyMiuiAnimationEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 7111
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 7112
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyMiuiAnimationStart()V
    .locals 4

    .line 7086
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    if-eqz v0, :cond_0

    .line 7087
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->cancelIconBackAnimation()V

    return-void

    .line 7090
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$67;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$67;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 7103
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    .line 7106
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7107
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public notifyPowerKeeperGesture(Ljava/lang/String;)V
    .locals 2

    .line 662
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$2qRVUKgS06aahxwej1HY9Us42ho;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$2qRVUKgS06aahxwej1HY9Us42ho;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    .line 1258
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 1267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MINUS_SCREEN_ONRESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "reintentdata"

    .line 1268
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "requestCode"

    .line 1269
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "resultCode"

    .line 1270
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1271
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

    .line 1294
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1297
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/FolderCling;->onRequestMarketDetail(Landroid/content/Intent;)V

    goto :goto_0

    .line 1277
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100268

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "android.intent.extra.shortcut.NAME"

    .line 1278
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1277
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1279
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showTogglesSelectView()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1281
    invoke-virtual {p0, v0, p3}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    goto :goto_0

    .line 1288
    :cond_4
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1285
    :cond_5
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;

    goto :goto_0

    :cond_6
    if-ne p1, v0, :cond_7

    if-nez p2, :cond_7

    if-eqz p3, :cond_7

    const-string v0, "appWidgetId"

    .line 1303
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 1305
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    :cond_7
    :goto_0
    :pswitch_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    if-ne p2, v2, :cond_8

    .line 1309
    invoke-static {p0, p3}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperFromCustom(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_d

    .line 1313
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result p3

    if-nez p3, :cond_9

    return-void

    :cond_9
    if-ne p2, v2, :cond_c

    .line 1315
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

    .line 1316
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 1317
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->setRecommendAppsSwitchOn(Z)V

    goto :goto_1

    .line 1320
    :cond_b
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    goto :goto_2

    .line 1322
    :cond_c
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderCling;->onUserDenyRecommendConnectNetWork()V

    :cond_d
    :goto_2
    const/16 p3, 0x3eb

    if-ne p1, p3, :cond_f

    if-ne p2, v2, :cond_e

    .line 1328
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    goto :goto_3

    .line 1330
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

    .line 8281
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onAttachedToWindow()V

    .line 8282
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8283
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 4206
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    .line 4207
    new-instance v0, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v2, "event_back"

    invoke-direct {v0, v2}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void

    .line 4212
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4213
    instance-of v1, v0, Lcom/miui/home/recents/views/RecentsContainer;

    if-eqz v1, :cond_1

    .line 4214
    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onBackPressed()V

    :cond_1
    return-void

    .line 4219
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

    .line 4220
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    .line 4221
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

    .line 4227
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

    .line 4228
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    return-void

    .line 4232
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->onCancelUninstall()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 4236
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_7

    .line 4237
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    return-void

    .line 4241
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 4242
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    return-void

    .line 4246
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->stepClose()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4247
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v0, :cond_9

    const-string v0, "back_key"

    .line 4248
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCloseFolderAfterBackToHome(Ljava/lang/String;)V

    :cond_9
    return-void

    .line 4253
    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 4257
    :cond_b
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_c

    .line 4258
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    return-void

    .line 4262
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

    .line 4266
    :cond_d
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isTogglesSelectViewShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 4267
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    return-void

    .line 4271
    :cond_e
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 4272
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceHideErrorBar()V

    .line 4273
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v2}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4274
    new-instance v2, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_back"

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 4307
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackCoverChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4311
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4315
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4316
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 4317
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4318
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 4321
    :cond_2
    instance-of v1, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_3

    .line 4322
    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    .line 4323
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderClick(Lcom/miui/home/launcher/FolderInfo;)V

    .line 4324
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->needToCheckIsGameFolder(Landroid/content/Context;Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4325
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$cSgE5QGBTmTyh8Zsa73TgK_Vpsk;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$cSgE5QGBTmTyh8Zsa73TgK_Vpsk;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 4328
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    if-eqz p1, :cond_4

    .line 4329
    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 8355
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8356
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkOrientation()V

    .line 8357
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkDarkMode()V

    .line 8358
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_0

    .line 8359
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RotationHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "Launcher"

    .line 809
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

    .line 812
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 814
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/LauncherStateManager;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherStateManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    .line 815
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 816
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v1

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 817
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onCreate()V

    .line 818
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    .line 819
    new-instance v1, Lcom/miui/launcher/utils/StatusBarClockController;

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/launcher/utils/StatusBarClockController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStatusBarClockController:Lcom/miui/launcher/utils/StatusBarClockController;

    .line 820
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getDesiredHomePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    const-string v1, "Launcher"

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDesiredHomePackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v1, Lcom/miui/home/launcher/LauncherStateManager;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherStateManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    .line 823
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->needStartFallbackHome(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 826
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 827
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 829
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeCreated(Ljava/lang/String;)V

    .line 831
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 833
    invoke-static {p0}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->inHomeStack(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Launcher"

    .line 834
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new launcher in home stack, old launcher is not, kill old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->finish()V

    goto :goto_0

    :cond_3
    const-string p1, "Launcher"

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kill new one:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->finish()V

    return-void

    .line 842
    :cond_4
    :goto_0
    new-instance v2, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    .line 843
    sget-boolean v2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v2, :cond_5

    .line 844
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 847
    :cond_5
    new-instance v2, Lcom/miui/home/settings/LauncherGestureController;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/LauncherGestureController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    .line 849
    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$l5SXzpeS0vGpQGc5zpBI4H7VLKs;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$l5SXzpeS0vGpQGc5zpBI4H7VLKs;

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$ub-qPdKRJODOmaIBTTo7coilcAo;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$ub-qPdKRJODOmaIBTTo7coilcAo;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 855
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->resetMultiSelectMonitor()V

    .line 856
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->registerAppTransitionAnimationHelper(Landroid/content/Context;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 857
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 858
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x700

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 v3, 0x100

    .line 863
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 864
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_6

    const/high16 v3, 0x4000000

    .line 866
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 868
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_7

    const/high16 v3, -0x80000000

    .line 869
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 871
    :cond_7
    invoke-static {v2, v1, v1}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->setExtraFlag(Landroid/view/Window;II)V

    .line 873
    invoke-virtual {v2, v1}, Landroid/view/Window;->setFormat(I)V

    .line 874
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->adaptPNotchScreen(Landroid/view/Window;)V

    .line 875
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->doSelfProtect()V

    .line 877
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->initDefaultExecutor()V

    .line 882
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    .line 883
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/LauncherApplication;->setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    .line 885
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/Launcher;->sPrefShowIconShadow:Z

    const/4 v2, 0x0

    .line 887
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 888
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    .line 889
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setRequestedOrientation(I)V

    .line 892
    :cond_8
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->updateApplicationEnableStateIfNeed()V

    .line 894
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerBroadcastReceivers()V

    .line 895
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 896
    new-instance v3, Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v3, v4, p0, v5}, Lcom/miui/home/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;I)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    .line 897
    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZxVInCO2jMoz8Z5DSRIIo9fIPk4;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZxVInCO2jMoz8Z5DSRIIo9fIPk4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    sget-object v4, Lcom/miui/home/launcher/-$$Lambda$Launcher$5J6SymLxQmzAYAPz1YAQldDWXiY;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$5J6SymLxQmzAYAPz1YAQldDWXiY;

    invoke-static {v3, v4}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 900
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 901
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v3

    if-nez v3, :cond_9

    .line 902
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v3, v4, v1, v5}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    goto :goto_1

    .line 904
    :cond_9
    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$-8anvGiGs2mavPCDHLfRmcSMLj4;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$-8anvGiGs2mavPCDHLfRmcSMLj4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v3, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 908
    :goto_1
    new-instance v3, Lcom/miui/home/launcher/DragController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/DragController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 909
    new-instance v3, Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/touch/FeedTransController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    .line 911
    new-instance v3, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    .line 912
    new-instance v3, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    .line 914
    new-instance v3, Lcom/miui/home/launcher/ShakeMonitor;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ShakeMonitor;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    .line 916
    new-instance v3, Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ApplicationsMessage;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 918
    new-instance v3, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    .line 919
    invoke-static {}, Lcom/miui/home/launcher/util/ViewRootImplHook;->getInstance()Lcom/miui/home/launcher/util/ViewRootImplHook;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    .line 924
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needHideMinusScreen()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 925
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0061

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    goto :goto_2

    .line 927
    :cond_a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d005d

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    .line 929
    :goto_2
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setContentView(Landroid/view/View;)V

    .line 931
    new-instance v3, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    .line 932
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v3}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->registerWallpaperChangedReceiver()V

    .line 933
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupViews()V

    .line 934
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initConflictItems()V

    .line 938
    new-instance v3, Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    invoke-direct {v3}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    .line 939
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v3, :cond_b

    .line 940
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 941
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->setScreenTransitionType(I)I

    .line 945
    :cond_b
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    .line 948
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 949
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 951
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initLauncher()V

    .line 952
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->register(Landroid/content/Context;)V

    .line 953
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsNetworkConnectedAsync()V

    .line 955
    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$OZyOLSrIw5k5XiaPHY261eyCWHw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$OZyOLSrIw5k5XiaPHY261eyCWHw;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava/util/function/Consumer;)V

    .line 960
    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$AnLM7EELa8vBTbFKYJyqZoQl3BI;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$AnLM7EELa8vBTbFKYJyqZoQl3BI;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava/util/function/Consumer;)V

    .line 961
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_c

    .line 962
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-interface {v1, p1, v3}, Lcom/miui/home/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 964
    :cond_c
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSystemUIFsgVersion()V

    .line 965
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getSecurityHideItemsAsync()V

    .line 966
    new-instance p1, Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mUninstallController:Lcom/miui/home/launcher/uninstall/UninstallController;

    .line 967
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 968
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 970
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 971
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->newInstance(Landroid/content/Context;)Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    .line 972
    new-instance p1, Lcom/miui/home/recents/util/RotationHelper;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/RotationHelper;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    .line 973
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RotationHelper;->initialize()V

    :cond_d
    const-string p1, "window"

    .line 976
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    .line 977
    new-instance p1, Lcom/miui/home/launcher/sound/SoundPoolHelper;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    .line 978
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

    .line 2775
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2779
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const v0, 0x7f10017a

    const/4 v2, 0x2

    .line 2783
    invoke-interface {p1, v2, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f100184

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 2784
    invoke-interface {p1, v3, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v4, 0x52

    .line 2785
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v4, 0x7f10017b

    .line 2786
    invoke-interface {p1, v2, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const/16 v0, 0x58

    .line 2787
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return v3
.end method

.method public onDestroy()V
    .locals 4

    .line 2629
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDestroy()V

    .line 2630
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onDestroy()V

    .line 2631
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    .line 2632
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    if-eqz v0, :cond_0

    .line 2633
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->unregisterBroadcastReceiver(Landroid/content/Context;)V

    .line 2635
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_1

    return-void

    .line 2638
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    if-eqz v0, :cond_2

    .line 2640
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

    .line 2642
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2645
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_3

    .line 2646
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RotationHelper;->destroy()V

    .line 2649
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2650
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onDestory()V

    .line 2653
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

    .line 2654
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onLauncherDestroy()V

    goto :goto_1

    .line 2656
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->disconnectFsGuestureService()V

    .line 2657
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->unregisterMiuiThumbnailAnimationHelper(Landroid/content/Context;)V

    .line 2658
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 2659
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eq v1, p0, :cond_6

    .line 2660
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 2664
    :cond_6
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 2666
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->onDestroy()V

    .line 2667
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 2669
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->clear()V

    .line 2671
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->onDestroy()V

    .line 2674
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unbindDesktopItems()V

    .line 2676
    new-instance v0, Lcom/miui/home/launcher/Launcher$18;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$18;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 2683
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 2684
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2687
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    if-eqz v0, :cond_8

    .line 2688
    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->unregisterReceiver()V

    .line 2691
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShakeMonitor;->stopMonitorIfNeed()V

    .line 2692
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onDestroy()V

    .line 2693
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->onDestroy()V

    const/4 v0, 0x6

    .line 2694
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 2695
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isChangingConfigurations()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    .line 2697
    invoke-static {}, Lcom/miui/home/launcher/LauncherAnimUtils;->onDestroyActivity()V

    .line 2699
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->resetMtzGadgetList()V

    .line 2701
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->onDestroy()V

    .line 2703
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->unRegister(Landroid/content/Context;)V

    .line 2704
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    if-eqz v0, :cond_9

    .line 2705
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2708
    :cond_9
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    if-eqz v0, :cond_b

    .line 2709
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->resetResourceDependenceItem()V

    .line 2710
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sEnteredSceneScreen:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/miui/home/launcher/SpecificDeviceConfig;->isBigScreenLowMemory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2715
    :cond_a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2718
    :cond_b
    invoke-static {}, Lcom/miui/home/launcher/FolderCling;->clearOldVersionRecommendStaticMemory()V

    .line 2719
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$yxMFgVDPwvqtM2EVPMZg_aJtNHY;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$yxMFgVDPwvqtM2EVPMZg_aJtNHY;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava/util/function/Consumer;)V

    .line 2724
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    if-eqz v0, :cond_c

    .line 2725
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onDestory()V

    .line 2727
    :cond_c
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/common/messages/DragMessage;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2728
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_d

    .line 2729
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDestroy()V

    .line 2731
    :cond_d
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2732
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDestroy()V

    const/4 v0, 0x0

    .line 2733
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 2734
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showTransitionMenu(Z)V

    .line 2735
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2736
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 2737
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    if-eqz v0, :cond_e

    .line 2738
    invoke-virtual {v0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->releaseHook()V

    .line 2740
    :cond_e
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    if-eqz v0, :cond_f

    .line 2741
    invoke-virtual {v0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->release()V

    .line 2743
    :cond_f
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2744
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 2746
    :cond_10
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    if-eqz v0, :cond_11

    .line 2747
    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->release()V

    .line 2748
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    .line 2750
    :cond_11
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2751
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->onDestroy(Landroid/content/Context;)V

    .line 2753
    :cond_12
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 8289
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDetachedFromWindow()V

    .line 8290
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8291
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7812
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x9

    .line 7815
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x7

    .line 7816
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_1
    return-void
.end method

.method public onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7840
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

    .line 7784
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 7787
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 7790
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7791
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 7792
    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, -0x65

    cmp-long p1, p1, v0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 7793
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    .line 7794
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7795
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7796
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 7798
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 7801
    :cond_3
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 7802
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x11

    .line 7803
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x9

    .line 7805
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

    .line 7822
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method onDropSettingShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3077
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 3078
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3079
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

    .line 3066
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 3067
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->startActivityForCreateShortcut(Landroid/content/Intent;)V

    return-void
.end method

.method onDropToggleShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3071
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 3072
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3073
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcutToggle(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 8344
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onEnterAnimationComplete()V

    .line 8345
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8346
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    .line 8348
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8349
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    :cond_1
    return-void
.end method

.method public onEnterRecentsFromApp()V
    .locals 2

    .line 8701
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    .line 8702
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8703
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 8704
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

    .line 2535
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    return-void
.end method

.method public onFolderOpenOrClose()V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "onFolderOpenOrClose"

    .line 7010
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7011
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    .line 7012
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onGesturePerformAppToHome()V
    .locals 6

    .line 2387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2388
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v2, :cond_0

    .line 2389
    invoke-virtual {v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->performAppToHome()V

    const-string v2, "Launcher"

    .line 2390
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

    .line 2392
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v2, :cond_1

    .line 2393
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 2394
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2395
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v3, v2}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    const-string v2, "Launcher"

    .line 2396
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

    .line 1652
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1653
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->acceptFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    .line 1654
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1656
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1663
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onSearchRequested()Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1000

    .line 6815
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    .line 6823
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLauncherModeChanged()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 718
    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 719
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 720
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerSearchBarObserver()V

    goto :goto_0

    .line 723
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterSearchBarObserver()V

    .line 725
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 4734
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4737
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackCoverChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4744
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->isViewInFolder(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 4748
    :cond_2
    instance-of v0, p1, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_3

    .line 4749
    check-cast p1, Lcom/miui/home/launcher/CellLayout;

    goto :goto_0

    .line 4751
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_4

    .line 4752
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout;

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 4756
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 4757
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

    .line 4763
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4764
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    .line 4765
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->performFakeLongClick()V

    return v1

    .line 4768
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 4769
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->isIconPositionFixed(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 4772
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4773
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getSelectCount()I

    move-result v3

    if-gt v3, v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 4776
    invoke-direct {p0, p1, v0, v2}, Lcom/miui/home/launcher/Launcher;->dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V

    goto :goto_3

    .line 4774
    :cond_9
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->dragSingleItem(Lcom/miui/home/launcher/CellLayout$CellInfo;Landroid/view/View;)V

    :cond_a
    :goto_3
    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    .line 4138
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 4139
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4140
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 4143
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4144
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4147
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    .line 4148
    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v2, "event_menu"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    goto :goto_0

    .line 4150
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "menu"

    .line 4151
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 4152
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

    .line 7006
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 8416
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8417
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/DeviceConfig;->setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    .line 8418
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->onMultiWindowModeChangedInternal(Z)V

    .line 8419
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8420
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChangedInternal(Z)V
    .locals 1

    .line 8425
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onMultiWindowModeChanged(Z)V

    .line 8426
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    if-eqz v0, :cond_0

    .line 8427
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->onMultiWindowModeChanged(Z)V

    .line 8429
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    if-eqz v0, :cond_1

    .line 8430
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DropTargetBar;->onMultiWindowModeChanged(Z)V

    .line 8432
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8433
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->onMultiWindowModeChanged(Z)V

    .line 8435
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_3

    .line 8436
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RotationHelper;->onMultiWindowModeChanged(Z)V

    .line 8438
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8439
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onMultiWindowModeChanged(Z)V

    .line 8441
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->clearCurrentTaskInfo()V

    .line 8442
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    return-void
.end method

.method public onNewHomeTransProgress(FF)V
    .locals 1

    .line 8724
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    return-void

    .line 8727
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onNewHomeTransProgress(FF)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 2279
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2280
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startMiPay()V

    .line 2283
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "locate_app"

    .line 2284
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->locateApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2289
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

    .line 2290
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

    .line 2291
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    .line 2295
    :cond_5
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2296
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    .line 2297
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    return-void

    :cond_6
    if-eqz v0, :cond_8

    .line 2300
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onNewIntent()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2301
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    .line 2302
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

    .line 2307
    :cond_9
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2308
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2309
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onNewIntent(Landroid/content/Intent;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 2311
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

    .line 2313
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackNewHome()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz v0, :cond_d

    .line 2314
    :cond_c
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    :cond_d
    return-void

    .line 2317
    :cond_e
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2318
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    invoke-static {p0, p1, v0}, Lcom/miui/home/recents/InternalStateHandler;->handleNewIntent(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Z)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "clickHomeKey"

    .line 2320
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    const p1, 0x7f100025

    .line 2321
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 2322
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    .line 2323
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    :cond_f
    return-void

    .line 2326
    :cond_10
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 2327
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    :cond_11
    const-string v3, "skip_reset_gesture_view_state"

    .line 2331
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2332
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 2335
    :cond_12
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 2337
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    :cond_13
    const-string v3, "android.intent.action.MAIN"

    .line 2340
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "homekey"

    .line 2342
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->closeAllOverLauncherWindow(Ljava/lang/String;)V

    .line 2344
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v3, :cond_14

    invoke-interface {v3, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_14

    return-void

    :cond_14
    const-string v3, "filter_flag"

    .line 2365
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2366
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-lez v3, :cond_15

    if-nez v2, :cond_15

    return-void

    .line 2370
    :cond_15
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2371
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onNewIntent(Landroid/content/Intent;)V

    .line 2373
    :cond_16
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v2, :cond_17

    invoke-interface {v2, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntentAfterFilter(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 2375
    :cond_17
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isTogglesSelectViewShowing()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2376
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    goto :goto_3

    :cond_18
    if-eqz v0, :cond_19

    .line 2378
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onNewIntentWhenAlreadyOnHome()V

    goto :goto_3

    .line 2379
    :cond_19
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2380
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    .line 2383
    :cond_1a
    :goto_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    return-void
.end method

.method public onNewIntentWhenAlreadyOnHome()V
    .locals 4

    .line 2401
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2404
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->onCancelUninstall()Z

    move-result v0

    .line 2406
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2407
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    .line 2409
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2410
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    goto/16 :goto_0

    .line 2411
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    .line 2412
    new-instance v0, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v1, "event_home"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    goto/16 :goto_0

    .line 2415
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2416
    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v3, :cond_5

    .line 2417
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 2418
    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v3, :cond_5

    const-string v3, "home_key"

    .line 2419
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCloseFolderAfterBackToHome(Ljava/lang/String;)V

    .line 2422
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2423
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    :cond_7
    if-eqz v0, :cond_8

    .line 2425
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$14;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$14;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 2429
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 2425
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2431
    :cond_8
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2432
    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_home"

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    goto :goto_0

    :cond_9
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 2436
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2437
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I

    .line 2439
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isDefaultScreenShowing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2440
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 2838
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->sceneOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2841
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onOverlayScrollEnd()V
    .locals 1

    .line 8259
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 8260
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8261
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 1411
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onPause()V

    .line 1412
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onPause()V

    .line 1413
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onPause()V

    .line 1417
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1418
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onPause()V

    :cond_1
    const/4 v0, 0x1

    .line 1420
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 1421
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    const/4 v1, 0x3

    .line 1422
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1423
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    .line 1424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 1425
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    .line 1430
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/Launcher$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$3;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1436
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1437
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onPause()V

    .line 1439
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1440
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->cancelImprovedToast()V

    .line 1441
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1442
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onPause()V

    const-wide/32 v0, 0xea60

    .line 1444
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/MemoryUtils;->trimMemoryInSubThreadDelayed(J)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 2806
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2807
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2808
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isSelectViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2811
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

    .line 6795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6796
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    const/16 v2, 0x1000

    if-nez v1, :cond_0

    .line 6797
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f1000c8

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6800
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 6801
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_1

    .line 6802
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f10002c

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6805
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6806
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f10014c

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6809
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/BaseActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onReorganizeStarted()V
    .locals 2

    const/4 v0, 0x7

    .line 5944
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    const/4 v0, 0x1

    .line 5945
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 5946
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5947
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

    .line 4423
    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 4425
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    return-void

    .line 4429
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 8641
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8643
    invoke-virtual {p1}, Landroid/os/BadParcelableException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1337
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onResume()V

    .line 1338
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 1339
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onResume()V

    .line 1340
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->needStartFallbackHome(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$9a0S3NAug5jIks94-pUbRf1K_kk;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$9a0S3NAug5jIks94-pUbRf1K_kk;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1344
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1347
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 1348
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    .line 1349
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1350
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onResume()V

    .line 1352
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->onResume()V

    .line 1353
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    const/4 v1, 0x4

    .line 1354
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1355
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    .line 1356
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->scrollToDefault()V

    .line 1357
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 1358
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    .line 1359
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    .line 1360
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->handleRemainingTasksOnResume(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 1361
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 1362
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1363
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.MINUS_SCREEN_ONRESUME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1366
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1367
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1368
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 1375
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    .line 1376
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsAccessibilityEnabledAsync()V

    .line 1377
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_5

    .line 1378
    invoke-interface {v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onResume()V

    .line 1380
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1381
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->notifyCurrentScreen()V

    .line 1382
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    .line 1383
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->clearLastLaunchApp()V

    .line 1384
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$cPlTThdr0Wab9Anhfj5nlx8z5b4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$cPlTThdr0Wab9Anhfj5nlx8z5b4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1385
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_6

    .line 1386
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkNewInstalledAppsBeStarted()V

    .line 1388
    :cond_6
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1389
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    if-eqz v0, :cond_7

    .line 1390
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$innKuL5cPBQ1aNtVyaDI2W-qTSA;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$innKuL5cPBQ1aNtVyaDI2W-qTSA;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1392
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onResume()V

    .line 1394
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

    .line 1395
    invoke-interface {v1}, Lcom/miui/home/launcher/Launcher$OnResumeCallback;->onLauncherResume()V

    goto :goto_0

    .line 1397
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1399
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    return-void
.end method

.method public onScreenCellLocked(Z)V
    .locals 7

    .line 7765
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7766
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7767
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 7769
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7770
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    move v3, v0

    .line 7772
    :goto_1
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 7773
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    .line 7774
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

    .line 729
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 730
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 731
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetIconSizeScale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 733
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

    .line 2845
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 2848
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setIsScreenOrientationChanged(Z)V

    .line 2849
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 2850
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setIsScreenOrientationChanged(Z)V

    .line 2851
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 2852
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->onScreenOrientationChanged()V

    .line 2853
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 2854
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->hideAppView()V

    .line 2855
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onScreenOrientationChanged()V

    .line 2856
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onScreenOrientationChanged()V

    .line 2857
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->onScreenOrientationChanged()V

    .line 2858
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onScreenOrientationChanged()V

    .line 2859
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onScreenOrientationChanged()V

    .line 2860
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onScreenOrientationChanged()V

    .line 2861
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->onScreenOrientationChanged()V

    .line 2862
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2863
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2865
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2866
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2867
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Launcher$19;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$19;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2875
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 2876
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2878
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onScreenOrientationChanged()V

    .line 2880
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2881
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    .line 2882
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 2884
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz v0, :cond_4

    .line 2885
    invoke-virtual {v0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    .line 2886
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 2888
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

    .line 2892
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onScreenSizeChanged()V

    .line 2893
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onScreenSizeChanged()V

    .line 2894
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->onScreenSizeChanged()V

    .line 2895
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onScreenSizeChanged()V

    .line 2896
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->onScreenSizeChanged()V

    .line 2897
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 2898
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2900
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onScreenSizeChanged()V

    .line 2901
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onScreenSizeChanged()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .line 2911
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2912
    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    :cond_0
    return v1
.end method

.method public onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7834
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

    .line 1523
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStart()V

    .line 1524
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onStart()V

    .line 1525
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1528
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->onLauncherResume()V

    .line 1529
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1530
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStart()V

    .line 1532
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_2

    .line 1533
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1534
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    :cond_2
    const/4 v0, 0x1

    .line 1537
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1538
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    .line 1539
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_3

    .line 1540
    invoke-interface {v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onStart()V

    .line 1542
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1543
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

    .line 2527
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    .line 2528
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 2529
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onStateSetStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 8791
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8792
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onStateChanged(Lcom/miui/home/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1497
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStop()V

    .line 1498
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onStop()V

    .line 1499
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onStop()V

    .line 1503
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->onLauncherPaused()V

    .line 1504
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onStop()V

    .line 1505
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1506
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStop()V

    .line 1508
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset()V

    const/4 v0, 0x2

    .line 1509
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1510
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1511
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStop()V

    :cond_2
    const/4 v0, 0x0

    .line 1514
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    .line 1515
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1516
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    .line 1517
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

    .line 6498
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {p2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->isPreparedAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6499
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->prepareAnimation()V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 6501
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->isResumed(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 6502
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 6503
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

    .line 1245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MINUS_SCREEN_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "WALLPAPER_COLOR_MODE"

    .line 1246
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1247
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1248
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    if-eqz v0, :cond_0

    .line 1249
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onWallpaperColorChanged()V

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 1252
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onWallpaperColorChanged()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 7551
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onWindowFocusChanged(Z)V

    .line 7552
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onWindowFocusChanged(Z)V

    .line 7553
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 7557
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onWindowFocus()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7558
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    .line 7560
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    if-eqz p1, :cond_2

    .line 7561
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-nez v0, :cond_2

    .line 7562
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startAndBindServiceIfNeed()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 7564
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    if-nez v0, :cond_3

    .line 7565
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7566
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 7569
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$j7x60O0iO5dPvxPu87ssMf11jMg;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$j7x60O0iO5dPvxPu87ssMf11jMg;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 7572
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 7573
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    const/4 v1, 0x7

    .line 7574
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 7576
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7577
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    :cond_6
    return-void
.end method

.method public onWorkspaceScroll()V
    .locals 1

    .line 6989
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->needCancelBackAnimationWhenWorkspaceScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6990
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    .line 6992
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6993
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->skipToEnd()V

    :cond_1
    return-void
.end method

.method public openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V
    .locals 1

    .line 4606
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onFolderOpenOrClose()V

    .line 4607
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

    .line 7454
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7456
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 7459
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    goto :goto_1

    .line 7461
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

    .line 3127
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3128
    instance-of v1, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v1, :cond_0

    .line 3129
    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->preRemoveView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public prepareAnimationForUnlock()V
    .locals 1

    .line 6406
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->prepairUserPersentAnimation()V

    .line 6407
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    if-eqz v0, :cond_0

    .line 6408
    invoke-virtual {v0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->scheduleTraversal()V

    :cond_0
    return-void
.end method

.method public prepareBeforeBindItems()V
    .locals 0

    .line 5456
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->updateGadgetBackup(Landroid/content/Context;)V

    return-void
.end method

.method public refreshSearchBarBlur()V
    .locals 1

    .line 8824
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8825
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->refreshBlur()V

    :cond_0
    return-void
.end method

.method reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 0

    .line 1099
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1100
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 1101
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1103
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherProvider;->onCreate()Z

    .line 1106
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    return-object p1
.end method

.method public reloadGadget(I)V
    .locals 6

    .line 2999
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3000
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

    .line 3001
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 3002
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 3003
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v4, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3005
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 3006
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3007
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3008
    invoke-virtual {p0, v2, v1, v3}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reloadSearchBarIfNeed()V
    .locals 2

    .line 3587
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBar()Z

    move-result v0

    .line 3588
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 3589
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBar()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3591
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 3592
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSearchBarVisibleChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3593
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 3595
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3596
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onScreenSizeChanged()V

    :cond_1
    return-void
.end method

.method public removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    .line 2196
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 2197
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2198
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    .line 2199
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWidgetRemove(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2201
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    if-eqz v0, :cond_1

    .line 2202
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2204
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public removeDeepShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 6774
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6775
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public removeDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 6740
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6741
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->isQuickCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6742
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallCleanButton()V

    return-void

    .line 6744
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->isPowerCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6745
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallPowerCleanButton()V

    return-void

    .line 6748
    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6750
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeDeepShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 6751
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onUninstallShortcut(Ljava/util/List;)V

    goto :goto_0

    .line 6753
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$6Ojd6Zu9m9vQakAl1C03cS3Ookk;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$6Ojd6Zu9m9vQakAl1C03cS3Ookk;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method removeFolder(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 4

    .line 3133
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3134
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3139
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3140
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 3141
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 3142
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    .line 3143
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onFolderDeleted()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Launcher"

    .line 3136
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

    .line 3147
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3149
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->removeRecommendAppsViewKey()V

    return-void
.end method

.method public removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 7307
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$CxKOMQlSgO0yfWgRAXBv3VcCvzY;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$CxKOMQlSgO0yfWgRAXBv3VcCvzY;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 7308
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 7309
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7311
    :cond_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7315
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

    .line 2218
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

    .line 2219
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeProgressIcon(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7319
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

    .line 7326
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7328
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    if-eqz v1, :cond_0

    .line 7330
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 7331
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7332
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->prepareLayoutAnimation()V

    :cond_0
    const-string v1, "Launcher"

    .line 7334
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

    .line 7335
    iget-wide v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    .line 7337
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7339
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 7340
    instance-of v2, v1, Lcom/miui/home/launcher/Launcher$IconContainer;

    if-eqz v2, :cond_2

    const-string v2, "Launcher"

    .line 7341
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

    .line 7342
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7341
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7343
    check-cast v1, Lcom/miui/home/launcher/Launcher$IconContainer;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/Launcher$IconContainer;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)I

    .line 7346
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7347
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 7350
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 7351
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7352
    iget-wide v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    iget-wide v6, p1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 7353
    invoke-virtual {p1, p0, v3}, Lcom/miui/home/launcher/ShortcutInfo;->onReplaced(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string p2, "Launcher"

    .line 7359
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

    .line 7362
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7363
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_5
    return-void
.end method

.method public removeWorkspaceTransitionType(I)V
    .locals 1

    .line 5239
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeScreenTransitionType(I)V

    return-void
.end method

.method public resetDragItems()V
    .locals 1

    .line 6097
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onAppsAdded()V

    .line 6098
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 6099
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6101
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->resetTouchCellInfo()V

    :cond_0
    return-void
.end method

.method public safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V
    .locals 3

    .line 4481
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4489
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->makeUnableToStartActivityToast()V

    const-string v0, "Launcher"

    .line 4490
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

    .line 4484
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4485
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->handleActivityNotFound(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4486
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->makeUnableToStartActivityToast()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToDefault()V
    .locals 2

    .line 1448
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1449
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1450
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 1

    .line 8266
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 8267
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setCurSelectedIcon(Lcom/miui/home/launcher/IBackAnimView;)V
    .locals 2

    const/4 v0, 0x0

    .line 7030
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 7031
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$66;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$66;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7042
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEditingState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 5067
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 1

    const/4 v0, 0x0

    .line 5071
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 8

    .line 5084
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 5088
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

    .line 5155
    :pswitch_0
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    goto/16 :goto_2

    .line 5152
    :pswitch_1
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1, v5, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    goto/16 :goto_2

    :pswitch_2
    const-string p2, "all"

    .line 5129
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    .line 5130
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p2, v0, :cond_2

    .line 5131
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p2

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v6, p3}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5133
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    .line 5134
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 5135
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 5136
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    .line 5137
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 5138
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5139
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1, v4, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5140
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 5142
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    .line 5143
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v5}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    const p2, 0x7f10006b

    .line 5144
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 5145
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 5146
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    goto/16 :goto_2

    .line 5094
    :pswitch_3
    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    .line 5095
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v6}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_4

    .line 5096
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :cond_4
    const/4 v6, 0x0

    .line 5098
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    .line 5099
    iget v6, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq v2, v6, :cond_5

    if-eq v6, v1, :cond_5

    .line 5101
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 5103
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5104
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    .line 5105
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    goto :goto_0

    .line 5106
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ErrorBar;->isShowing()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v6

    if-nez v6, :cond_7

    .line 5108
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 5110
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v6

    if-nez v6, :cond_8

    .line 5111
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    .line 5113
    :cond_8
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5114
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->addOnStateChangeFinishRunnable(Ljava/lang/Runnable;)V

    .line 5115
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v6, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v6, v2, :cond_9

    move v6, v5

    goto :goto_1

    :cond_9
    move v6, v4

    :goto_1
    invoke-virtual {p2, p1, v6, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5116
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v4}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    .line 5117
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    .line 5118
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 5119
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result p2

    if-nez p2, :cond_a

    .line 5121
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    .line 5123
    :cond_a
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    .line 5124
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p2, v3, :cond_c

    const p2, 0x7f10006c

    .line 5125
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    goto :goto_2

    .line 5149
    :cond_b
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v6}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showShortcutMenu(Lcom/miui/home/launcher/DragObject;)V

    .line 5159
    :cond_c
    :goto_2
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 5160
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 5161
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p1, v3, :cond_d

    .line 5162
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1, v5}, Lcom/miui/home/launcher/Workspace;->requestDisallowInterceptTouchEvent(Z)V

    .line 5164
    :cond_d
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShakeMonitor;->onEditModeStateChanged()V

    const-string p1, "Launcher"

    const-string v3, "edit state changed from %s to %s"

    const/4 v6, 0x2

    .line 5165
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

    .line 5166
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v3, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;

    iget v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-direct {v3, v4, p2}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;-><init>(II)V

    invoke-virtual {p1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5167
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq p1, v2, :cond_f

    if-ne p2, v2, :cond_e

    if-eq p1, v0, :cond_f

    .line 5169
    :cond_e
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_f
    if-ne p2, v1, :cond_10

    .line 5172
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-nez p1, :cond_10

    .line 5173
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->hideShortcutMenu(Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5175
    :cond_10
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 5176
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

    .line 8271
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->setOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 8272
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->setFeedOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setLastLaunchApp(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method public setLastLaunchApp(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V
    .locals 3

    .line 644
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 645
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 646
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->isEquals(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    :cond_1
    return-void
.end method

.method public setLauncherCallbacks(Lcom/miui/home/launcher/LauncherCallbacks;)Z
    .locals 0

    .line 8219
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    const/4 p1, 0x1

    return p1
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 8228
    new-instance v0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 8229
    invoke-interface {p1, v0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V

    const/4 v1, 0x0

    .line 8230
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->onScrollChanged(F)V

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 8232
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    const/4 v0, 0x0

    .line 8233
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    .line 8234
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 8235
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setLauncherWindowAlpha(F)V
    .locals 3

    .line 7540
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7541
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7542
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 7543
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v0, "Launcher"

    .line 7544
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

    .line 8559
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8560
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_0
    return-void
.end method

.method public showDefaultScreenPreviewView(Z)V
    .locals 3

    .line 7886
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 7889
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setIsShowing(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7891
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 7892
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 7893
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setVisibility(I)V

    .line 7894
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7895
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->onShow(Z)V

    const v0, 0x7f10006f

    .line 7896
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    goto :goto_0

    .line 7898
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 7899
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 7900
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const v0, 0x7f10005a

    .line 7901
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 7903
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

    .line 2248
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    return-void
.end method

.method public showMenu(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 7719
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    if-nez p1, :cond_0

    .line 7720
    new-instance p1, Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-direct {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 7722
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7723
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    .line 7725
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/LauncherMenuDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 7726
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    if-eqz p1, :cond_3

    .line 7727
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    .line 7728
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public showPresent()V
    .locals 4

    .line 3602
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->shouldShowUserPresentAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3603
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 3604
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBoostResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3605
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/launcher/utils/BoostHelper;->boost(Landroid/view/View;Z)V

    .line 3606
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBoostResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3608
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->showAnimation()V

    goto :goto_0

    .line 3610
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->resetAnimation()V

    .line 3612
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->showUserPresentAnimation()V

    .line 3613
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3614
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_1
    return-void
.end method

.method public showSceneScreen()V
    .locals 1

    const/4 v0, 0x1

    .line 4886
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 4887
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4889
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenLoading()V

    goto :goto_0

    .line 4891
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reinit()V

    .line 4892
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenCore(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    :goto_0
    return-void
.end method

.method public showSceneScreenLoading()V
    .locals 5

    .line 4932
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v2, 0x0

    const v3, 0x7f0d004c

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    .line 4935
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 4937
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 4938
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    const-string v1, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4939
    new-instance v1, Lcom/miui/home/launcher/Launcher$49;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$49;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4944
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 4946
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    return-void
.end method

.method public showStatusBar(Z)V
    .locals 2

    .line 5265
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5266
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$BdmCE3cefUXnFAjsmZO_5bQk9dk;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$BdmCE3cefUXnFAjsmZO_5bQk9dk;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showStatusBarDelay(ZJ)V
    .locals 1

    .line 5259
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBar:Z

    .line 5260
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5261
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showTogglesSelectView()V
    .locals 4

    .line 2060
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    if-nez v0, :cond_0

    .line 2061
    new-instance v0, Lcom/miui/home/launcher/TogglesSelectView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/TogglesSelectView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    .line 2062
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

    .line 7734
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-nez p1, :cond_0

    .line 7735
    new-instance p1, Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-direct {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 7737
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7738
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    .line 7740
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 7741
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz p1, :cond_3

    .line 7742
    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    .line 7743
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public showWidgetsPreviewLayout(Z)V
    .locals 4

    .line 5181
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    .line 5182
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5186
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 5187
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->resetAdapter()V

    .line 5188
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setScreenType(I)V

    .line 5189
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setVisibility(I)V

    .line 5190
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5191
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 5192
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 5193
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->clearAllScreensToast()V

    .line 5194
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HotSeats;->setVisibility(I)V

    .line 5195
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    goto :goto_1

    .line 5197
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5198
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 5199
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 5200
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

    .line 5201
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    :cond_3
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    .line 5203
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

    .line 5322
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->blockSnap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5323
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->snapToScreen(I)I

    .line 5324
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine()V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    .line 4436
    :try_start_0
    instance-of v1, p3, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_1

    .line 4437
    move-object v0, p3

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v0

    .line 4438
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    if-eqz v1, :cond_0

    .line 4439
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    invoke-virtual {v1, p0, p3, v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 4441
    :cond_0
    invoke-static {p3, v0}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->getLaunchActivityOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 4444
    :goto_0
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 4445
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4446
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch()V

    .line 4447
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLastLaunchApp(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4448
    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemFlagAndLaunchCount(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    .line 4449
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->onLaunchApplication(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4450
    iget v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    .line 4451
    move-object p3, v0

    check-cast p3, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v2

    .line 4452
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 4453
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 4454
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, p0

    .line 4453
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->startShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    const-string v0, "profile"

    .line 4458
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 4459
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x10000000

    .line 4460
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4461
    invoke-direct {p0, v1, p3}, Lcom/miui/home/launcher/Launcher;->tryToAddSourceBounds(Landroid/content/Intent;Landroid/view/View;)V

    .line 4463
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackGoolgPlay(Landroid/content/Intent;)V

    if-eqz v0, :cond_5

    .line 4464
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 4466
    :cond_3
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4467
    invoke-static {p0, v1, v4, v0}, Lcom/miui/launcher/utils/LauncherUtils;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 4470
    :cond_4
    new-instance p3, Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;

    invoke-direct {p3, p0, v1, v0, v4}, Lcom/miui/home/launcher/-$$Lambda$Launcher$_JmcHX7HvS5nXt1Rj3EnAAwUKv8;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    goto :goto_2

    .line 4465
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    const v0, 0x7f10024d

    const/4 v1, 0x0

    .line 4474
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Launcher"

    .line 4475
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

    .line 3062
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4535
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4518
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$q0-wjrx0UuMa7tLRXHrwBAZRCTg;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$q0-wjrx0UuMa7tLRXHrwBAZRCTg;-><init>(Lcom/miui/home/launcher/Launcher;ILandroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    const/16 p1, 0x3ea

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 4529
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    :cond_0
    return-void
.end method

.method public startBinding()V
    .locals 4

    const/4 v0, 0x3

    .line 5492
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5493
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5495
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5496
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5499
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

    .line 5461
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    const/4 v0, 0x1

    .line 5462
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 5463
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearForReload()V

    .line 5464
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5465
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->startLoading()V

    .line 5466
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->startLoading()V

    .line 5467
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setEnable(Z)V

    .line 5468
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initLoadingAsyncInflateManager()V

    .line 5469
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    .line 5470
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    .line 5471
    invoke-static {p0}, Lcom/miui/home/launcher/util/WorkProfileHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6

    .line 2760
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2763
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 2764
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearTypedText()V

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const-string p1, "search"

    .line 2768
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/SearchManager;

    .line 2769
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

    .line 8298
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8299
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    if-nez v0, :cond_0

    .line 8301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.PRIVACY_APPS_HELPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 8302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8303
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 8304
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    :cond_0
    return-void
.end method

.method public tryToRegisterWidgetListener()V
    .locals 3

    .line 8457
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    if-nez v0, :cond_0

    .line 8459
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    const/4 v0, 0x1

    .line 8460
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "startListening error"

    .line 8463
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method uninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 6883
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 6884
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "miui.intent.action.CREATE_QUICK_CLEANUP_SHORTCUT"

    .line 6888
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6889
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallCleanButton()V

    return-void

    :cond_1
    const-string v2, "com.android.securitycenter.CREATE_DEEP_CLEAN_SHORTCUT"

    .line 6893
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6894
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallPowerCleanButton()V

    return-void

    :cond_2
    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 6898
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 6900
    new-instance v1, Lcom/miui/home/launcher/Launcher$65;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/miui/home/launcher/Launcher$65;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 6915
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public updateDeepShortcut(Lcom/miui/launcher/common/ShortcutInfoCompat;)V
    .locals 3

    .line 6781
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    .line 6782
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6783
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6785
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/DeepShortcutInfo;->updateDeepShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    :cond_0
    return-void
.end method

.method public updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 7492
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V
    .locals 4

    .line 8318
    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 8319
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8321
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8322
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "attached-launcher-identifier"

    const-string v3, "com.miui.home"

    .line 8323
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "requested-widget-style"

    const-string v3, "cqsb"

    .line 8324
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8325
    invoke-virtual {p3, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 8328
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 p3, 0x80

    .line 8329
    invoke-virtual {p1, v0, p3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 8330
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string p3, "com.google.android.gsa.searchwidget.alt_initial_layout_cqsb"

    const/4 v0, -0x1

    .line 8331
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 8333
    iput p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateSoftInputMode()V
    .locals 2

    .line 8617
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 8622
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    if-eq v0, v1, :cond_1

    .line 8623
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 8624
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    :cond_1
    return-void
.end method

.method public updateStatusBarClock()V
    .locals 2

    .line 5318
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock(J)V

    return-void
.end method

.method public updateStatusBarClock(J)V
    .locals 1

    .line 5293
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->isDisableUpdateStatusBarClock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 5297
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Launcher"

    const-string p2, "workspace is loading, don\'t update status bar"

    .line 5298
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5302
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5303
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    if-nez v0, :cond_3

    .line 5305
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    .line 5306
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5307
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isScreenHasClockGadget(J)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    .line 5308
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 5309
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 5310
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

    .line 5312
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mStatusBarClockController:Lcom/miui/launcher/utils/StatusBarClockController;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$e_lgOipHSnksuOkD8YxZ4GO_LMI;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$e_lgOipHSnksuOkD8YxZ4GO_LMI;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p2, p1, v0}, Lcom/miui/launcher/utils/StatusBarClockController;->showOrHideClock(ZLjava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public updateWallpaperOffset(FFFF)Z
    .locals 1

    .line 5418
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset(FFFF)Z

    move-result p1

    return p1
.end method

.method public updateWallpaperOffsetAnimate(FFFF)Z
    .locals 1

    .line 5422
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffsetAnimate(FFFF)Z

    move-result p1

    return p1
.end method

.method public updateWidgetProgress(Ljava/lang/String;I)V
    .locals 3

    .line 6281
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

    .line 6282
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6283
    invoke-virtual {v1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProgress(I)V

    .line 6284
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 6285
    iget-object v1, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v1, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    .line 6286
    invoke-virtual {v1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->updateProgress()V

    goto :goto_0

    :cond_1
    return-void
.end method
