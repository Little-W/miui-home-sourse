.class public Lcom/miui/home/recents/BaseRecentsImpl;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/BaseRecentsImpl$H;,
        Lcom/miui/home/recents/BaseRecentsImpl$_lancet;
    }
.end annotation


# instance fields
.field private mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

.field private mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

.field private mCastModeObserver:Landroid/database/ContentObserver;

.field private mCloudDataObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDisabledByDriveMode:Z

.field private mDriveModeObserver:Landroid/database/ContentObserver;

.field private mElderlyModeObserver:Landroid/database/ContentObserver;

.field private mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

.field private mFsgReceiver:Landroid/content/BroadcastReceiver;

.field private mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

.field private mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

.field protected mHandler:Landroid/os/Handler;

.field private mHasNavigationBar:Z

.field public mHideGestureLine:Z

.field private mHideGestureLineListener:Landroid/database/ContentObserver;

.field private mHotZoneChangeActListStr:Ljava/lang/String;

.field private mIsChangedScreeningPkgLockState:Ljava/lang/Boolean;

.field private mIsInAnotherPro:Z

.field private mIsPerformGesture:Z

.field private mIsStatusBarExpansion:Z

.field private mIsUseMiuiHomeAsDefaultHome:Z

.field protected mKM:Landroid/app/KeyguardManager;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastResumedClassName:Ljava/lang/String;

.field private mLocalCtrlActs:[Ljava/lang/String;

.field private mNavStubView:Lcom/miui/home/recents/NavStubView;

.field private mNoBackActListStr:Ljava/lang/String;

.field private mNoBackAndHomeActListStr:Ljava/lang/String;

.field private mNoHomeActListStr:Ljava/lang/String;

.field private mReadCloudRunnable:Ljava/lang/Runnable;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

.field private mSuperSavePowerObserver:Landroid/database/ContentObserver;

.field private mSystemUiFlags:I

.field private mThumbnailBlurManager:Lcom/miui/home/recents/ThumbnailBlurManager;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    const-string v1, "com.android.systemui.fsgesture.HomeDemoAct"

    const-string v2, "com.android.systemui.fsgesture.DemoFinishAct"

    const-string v3, "com.android.systemui.fsgesture.DrawerDemoAct"

    const-string v4, "com.android.systemui.fsgesture.FsGestureBackDemoActivity"

    const-string v5, "com.android.systemui.fsgesture.AppQuickSwitchActivity"

    const-string v6, "com.android.provision.activities.CongratulationActivity"

    .line 80
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    const-string v1, ""

    .line 88
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    const-string v1, ""

    .line 90
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    const-string v1, ""

    .line 94
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHotZoneChangeActListStr:Ljava/lang/String;

    .line 112
    new-instance v1, Lcom/miui/home/recents/RecentsReceiver;

    invoke-direct {v1}, Lcom/miui/home/recents/RecentsReceiver;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

    .line 283
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$3;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$3;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLineListener:Landroid/database/ContentObserver;

    .line 293
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$4;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

    .line 305
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$5;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$5;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    .line 314
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$6;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$6;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mElderlyModeObserver:Landroid/database/ContentObserver;

    .line 425
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$7;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$7;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 432
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$8;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$8;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    .line 448
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$9;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$9;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$10;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$10;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    .line 502
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    .line 622
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$11;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$11;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    .line 636
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$12;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$12;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    .line 815
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsPerformGesture:Z

    .line 828
    iput v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    .line 836
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 116
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    .line 117
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    const-string v1, "keyguard"

    .line 118
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    .line 119
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$H;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Lcom/miui/home/recents/BaseRecentsImpl$1;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addFsgGestureWindow()V

    .line 122
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.systemui.taskmanager.Clear"

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    new-instance v1, Lcom/miui/home/recents/ThumbnailBlurManager;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/miui/home/recents/ThumbnailBlurManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mThumbnailBlurManager:Lcom/miui/home/recents/ThumbnailBlurManager;

    .line 127
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isCloudProviderExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerScreeningModeObserver()V

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->initHideGestureLine(Landroid/content/Context;)V

    .line 133
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerSuperSavePowerObserver()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addBackStubWindow()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/view/WindowManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->clearBackStubWindow()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/BaseRecentsImpl;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/BaseRecentsImpl;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHotZoneChangeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/recents/BaseRecentsImpl;)Ljava/lang/Boolean;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsChangedScreeningPkgLockState:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsChangedScreeningPkgLockState:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/recents/BaseRecentsImpl;Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowState()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    return p0
.end method

.method static synthetic access$602(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    return p0
.end method

.method private addBackStubWindow()V
    .locals 2

    .line 381
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$VmQ9lgmwMzTTOCG76A9LkBMWFyg;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$VmQ9lgmwMzTTOCG76A9LkBMWFyg;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addFsgGestureWindow()V
    .locals 11

    .line 215
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    .line 217
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "systemui_fsg_version"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    .line 221
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 220
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 222
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    .line 223
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLineListener:Landroid/database/ContentObserver;

    .line 222
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 224
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drive_mode_drive_mode"

    .line 225
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 224
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 226
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    .line 227
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    .line 226
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "elderly_mode"

    .line 229
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mElderlyModeObserver:Landroid/database/ContentObserver;

    .line 228
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 237
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.systemui.fsgesture"

    .line 238
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 239
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getAllUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    const-string v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/miui/launcher/utils/LauncherUtils;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    .line 242
    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->addCallback(Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;)V

    .line 244
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hide_gesture_line"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    .line 249
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "drive_mode_drive_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    .line 250
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getCurrentUserId()I

    move-result v4

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    .line 251
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    .line 253
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    .line 254
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateUseLauncherRecentsAndFsGesture()V

    if-eqz v0, :cond_3

    .line 256
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eqz v0, :cond_3

    const-string v0, "RecentsImpl"

    const-string v1, "navstubview will be added: addFsgGestureWindow"

    .line 257
    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    .line 259
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    :cond_3
    return-void
.end method

.method private clearBackStubWindow()V
    .locals 2

    .line 409
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$5dDESh8IDP6c9eLGrueodbJRPnc;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$5dDESh8IDP6c9eLGrueodbJRPnc;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createAndAddNavStubView()V
    .locals 3

    .line 273
    new-instance v0, Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 274
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->onSystemUiFlagsChanged(I)V

    .line 275
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setHideGestureLine(Z)V

    .line 279
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 280
    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 279
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    .line 683
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getTopActivity(Z)Landroid/content/ComponentName;
    .locals 2

    .line 688
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 689
    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    .line 692
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 696
    :cond_1
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :cond_2
    return-object p1
.end method

.method private hideBackStubWindow()V
    .locals 2

    .line 594
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$KasdxgdqAAOVnPo49h3HNG339AM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$KasdxgdqAAOVnPo49h3HNG339AM;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initGestureStub(I)V
    .locals 1

    .line 391
    new-instance p1, Lcom/miui/home/recents/GestureStubView;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/GestureStubView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    .line 392
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setDefaultProperty(Lcom/miui/home/recents/GestureStubView;I)V

    .line 394
    new-instance p1, Lcom/miui/home/recents/GestureStubView;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/GestureStubView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    .line 395
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setDefaultProperty(Lcom/miui/home/recents/GestureStubView;I)V

    .line 396
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    return-void
.end method

.method private initHideGestureLine(Landroid/content/Context;)V
    .locals 3

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "hide_gesture_line"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private isAllowUpdateFsgStateFromKeyguard(Ljava/lang/String;)Z
    .locals 2

    .line 566
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.mfashiongallery.emag.morning.MorningGreetActivity:com.android.deskclock.activity.AlarmAlertFullScreenActivity"

    .line 569
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private isCloudProviderExist()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUseLauncherRecentsAndFsGesture()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    return v0
.end method

.method public static synthetic lambda$addBackStubWindow$0(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 383
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->initGestureStub(I)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    .line 386
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    return-void
.end method

.method public static synthetic lambda$clearBackStubWindow$1(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->clearGestureStub()V

    .line 413
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->clearGestureStub()V

    .line 417
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$disableBackStubWindow$4(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$hideBackStubWindow$3(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStubDelay()V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStubDelay()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$showBackStubWindow$2(Lcom/miui/home/recents/BaseRecentsImpl;I)V
    .locals 2

    .line 578
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    if-nez v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 580
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->initGestureStub(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 584
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    .line 585
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    goto :goto_0

    .line 587
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    :cond_2
    :goto_0
    return-void
.end method

.method private readCloudDataForFsg()V
    .locals 2

    .line 632
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 633
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerScreeningModeObserver()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$2;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$2;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cast_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerSuperSavePowerObserver()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$1;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_supersave_mode_open"

    .line 148
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 147
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private setDefaultProperty(Lcom/miui/home/recents/GestureStubView;I)V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    xor-int/lit8 v0, v2, 0x1

    .line 402
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView;->disableQuickSwitch(Z)V

    .line 403
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureStubView;->enableGestureBackAnimation(Z)V

    .line 404
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/GestureStubView;->setGestureStubPosition(I)V

    .line 405
    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->adaptAndRender()V

    return-void
.end method

.method private showBackStubWindow()V
    .locals 1

    const/4 v0, -0x1

    .line 573
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow(I)V

    return-void
.end method

.method private showBackStubWindow(I)V
    .locals 2

    .line 577
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$DF7PBU6yN-_uKzuJwXtceUXEDAE;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$DF7PBU6yN-_uKzuJwXtceUXEDAE;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateFsgWindowState()V
    .locals 2

    .line 351
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eqz v0, :cond_2

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-nez v0, :cond_1

    const-string v0, "RecentsImpl"

    const-string v1, "navstubview will be added: updateFsgWindowState"

    .line 359
    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addBackStubWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 368
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_3

    const-string v0, "RecentsImpl"

    const-string v1, "navstubview will be removed: updateFsgWindowState"

    .line 369
    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 373
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->clearBackStubWindow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateStatusBarExpansion(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "typefrom_status_bar_expansion"

    .line 505
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 506
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    :cond_0
    return-void
.end method

.method private updateUseLauncherRecentsAndFsGesture()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isUseLauncherRecentsAndFsGesture()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public adaptToTopActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 672
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    return-void
.end method

.method public adaptToTopActivity(Z)V
    .locals 0

    .line 676
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity(Z)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 678
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public disableBackStubWindow(Z)V
    .locals 2

    .line 606
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$JPK3HfKhtf2ReiDvQUtW5FUVqY0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$JPK3HfKhtf2ReiDvQUtW5FUVqY0;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getNavStubView()Lcom/miui/home/recents/NavStubView;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    return-object v0
.end method

.method public modifyTransformVisible(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->modifyTransformVisible(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    .line 843
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 846
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onThemeChanged()V

    :cond_3
    if-eqz v1, :cond_4

    .line 849
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onLanguageChange()V

    :cond_4
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 667
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    :cond_0
    return-void
.end method

.method public onResumed(Ljava/lang/String;)V
    .locals 4

    .line 702
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastResumedClassName:Ljava/lang/String;

    .line 703
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 709
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "com.miui.home.launcher.Launcher:com.miui.personalassistant.fake.FakeStartActivity:com.miui.personalassistant.fake.FakeEndActivity"

    .line 714
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 715
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 717
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_3
    return-void

    .line 722
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 723
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$13;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl$13;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 732
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 733
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$14;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl$14;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 744
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 745
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$15;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl$15;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 756
    :cond_7
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$16;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl$16;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    const-string p1, "lithium"

    .line 768
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 1

    .line 830
    iput p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    .line 831
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->onSystemUiFlagsChanged(I)V

    :cond_0
    return-void
.end method

.method public setIsPerformGesture(Z)V
    .locals 1

    .line 817
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsPerformGesture:Z

    .line 818
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->onPerformGestureStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public setIsUseMiuiHomeAsDefaultHome(Z)V
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eq v0, p1, :cond_0

    .line 344
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    .line 345
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateUseLauncherRecentsAndFsGesture()V

    .line 346
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowState()V

    :cond_0
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public updateFsgWindowVisibilityState(ZLjava/lang/String;)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 512
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-nez v1, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "typefrom_home"

    .line 516
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    if-eqz v0, :cond_1

    return-void

    .line 520
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->updateStatusBarExpansion(ZLjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    .line 524
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "typefrom_ai_voice_assist"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "typefrom_home"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "typefrom_demo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v0

    goto :goto_0

    :sswitch_3
    const-string v1, "typefrom_status_bar_expansion"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "typefrom_provision"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "typefrom_keyguard"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    :goto_0
    const/16 p2, 0x8

    packed-switch p1, :pswitch_data_0

    .line 542
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->setVisibility(I)V

    .line 543
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    .line 538
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    :pswitch_1
    const-string p1, "RecentsImpl"

    const-string v0, "resume statusbar nstub gone"

    .line 533
    invoke-static {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/NavStubView;->setVisibility(I)V

    .line 535
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    .line 527
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/NavStubView;->setVisibility(I)V

    const-string p1, "RecentsImpl"

    const-string p2, "resume demo nstub gone"

    .line 528
    invoke-static {p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    :cond_3
    const-string p1, "typefrom_keyguard"

    .line 547
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastResumedClassName:Ljava/lang/String;

    .line 548
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->isAllowUpdateFsgStateFromKeyguard(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 549
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->setVisibility(I)V

    .line 550
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    :cond_4
    const-string p1, "typefrom_home"

    .line 551
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 552
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p2, "com.miui.home.launcher.Launcher:com.miui.personalassistant.fake.FakeStartActivity:com.miui.personalassistant.fake.FakeEndActivity"

    .line 553
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 554
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->setVisibility(I)V

    .line 555
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    .line 558
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3d22c45f -> :sswitch_5
        -0x3376ffc6 -> :sswitch_4
        0x18abd181 -> :sswitch_3
        0x4025cb5e -> :sswitch_2
        0x4027c25a -> :sswitch_1
        0x5dc52872 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
