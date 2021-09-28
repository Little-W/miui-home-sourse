.class public Lcom/miui/home/recents/BaseRecentsImpl;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/BaseRecentsImpl$H;
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

.field private mIsStatusBarExpansion:Z

.field private mIsUseMiuiHomeAsDefaultHome:Z

.field protected mKM:Landroid/app/KeyguardManager;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastResumedClassName:Ljava/lang/String;

.field private mLayoutStyleObserver:Landroid/database/ContentObserver;

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

.field private mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

.field private mThumbnailBlurManager:Lcom/miui/home/recents/ThumbnailBlurManager;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    const-string v1, "com.android.systemui.fsgesture.HomeDemoAct"

    const-string v2, "com.android.systemui.fsgesture.DemoFinishAct"

    const-string v3, "com.android.systemui.fsgesture.DrawerDemoAct"

    const-string v4, "com.android.systemui.fsgesture.FsGestureBackDemoActivity"

    const-string v5, "com.android.systemui.fsgesture.AppQuickSwitchActivity"

    const-string v6, "com.android.provision.activities.CongratulationActivity"

    const-string v7, "com.xiaomi.misubscreenui.SubScreenMainActivity"

    .line 85
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    const-string v1, "android.autofillservice.cts.LoginActivity:"

    .line 94
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    const-string v1, ""

    .line 96
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    const-string v1, ""

    .line 98
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    const-string v1, ""

    .line 100
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHotZoneChangeActListStr:Ljava/lang/String;

    .line 116
    new-instance v1, Lcom/miui/home/recents/RecentsReceiver;

    invoke-direct {v1}, Lcom/miui/home/recents/RecentsReceiver;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

    .line 372
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$4;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$4;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLineListener:Landroid/database/ContentObserver;

    .line 384
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$5;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$5;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

    .line 396
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$6;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$6;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    .line 406
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$7;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$7;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mElderlyModeObserver:Landroid/database/ContentObserver;

    .line 526
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$8;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$8;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 533
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$9;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$9;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    .line 549
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$10;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$10;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 588
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$11;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$11;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    .line 601
    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    .line 747
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$12;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl$12;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    .line 761
    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$13;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl$13;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    .line 900
    iput v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    .line 922
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 123
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    .line 124
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "keyguard"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    .line 126
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$H;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Lcom/miui/home/recents/BaseRecentsImpl$1;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    .line 128
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addFsgGestureWindow()V

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.taskmanager.Clear"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mRecentsReceiver:Lcom/miui/home/recents/RecentsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    new-instance v0, Lcom/miui/home/recents/ThumbnailBlurManager;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/ThumbnailBlurManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mThumbnailBlurManager:Lcom/miui/home/recents/ThumbnailBlurManager;

    .line 134
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->setTaskStackViewLayoutStyle(ILandroid/content/Context;)V

    .line 136
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerCloudDataObserver()V

    .line 138
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerScreeningModeObserver()V

    .line 139
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->initHideGestureLine(Landroid/content/Context;)V

    .line 140
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerSuperSavePowerObserver()V

    .line 141
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->registerRecentsLayoutStyleObserver()V

    .line 142
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->init(Landroid/content/Context;)V

    .line 143
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->addCallback(Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addBackStubWindow()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->removeNavStubView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->clearBackStubWindow()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/BaseRecentsImpl;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1784(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1984(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/BaseRecentsImpl;ILandroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->setTaskStackViewLayoutStyle(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHotZoneChangeActListStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsChangedScreeningPkgLockState:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsChangedScreeningPkgLockState:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return p0
.end method

.method static synthetic access$502(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowState()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->setFSGNavBar(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/recents/BaseRecentsImpl;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    return p0
.end method

.method static synthetic access$802(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/GestureStubView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    return-object p0
.end method

.method private addBackStubWindow()V
    .locals 2

    .line 482
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$ZoIb2O5eFfZFslkXbL95t1IswoM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$ZoIb2O5eFfZFslkXbL95t1IswoM;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addFsgGestureWindow()V
    .locals 11

    .line 271
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    .line 273
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "systemui_fsg_version"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    .line 277
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mForceImmersiveNavBarListener:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 276
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    .line 279
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLineListener:Landroid/database/ContentObserver;

    .line 278
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 280
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drive_mode_drive_mode"

    .line 281
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 280
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 282
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_gesture_appswitch_feature"

    .line 283
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mAppSwitchAnimChangeListener:Landroid/database/ContentObserver;

    .line 282
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "elderly_mode"

    .line 285
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mElderlyModeObserver:Landroid/database/ContentObserver;

    .line 284
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 293
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.systemui.fsgesture"

    .line 294
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 295
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v5, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mFsgReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getAllUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    const-string v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/miui/launcher/utils/LauncherUtils;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    .line 298
    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mActivityStateObserver:Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->addCallback(Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;)V

    .line 300
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->readCloudDataForFsg()V

    .line 302
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hide_gesture_line"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    .line 305
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

    .line 306
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

    .line 307
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 308
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

    .line 309
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    .line 310
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateUseLauncherRecentsAndFsGesture()V

    if-eqz v0, :cond_3

    .line 312
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eqz v0, :cond_3

    const-string v0, "RecentsImpl"

    const-string v1, "navstubview will be added: addFsgGestureWindow"

    .line 313
    .line 314
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    .line 315
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    :cond_3
    return-void
.end method

.method private clearBackStubWindow()V
    .locals 2

    .line 510
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$cCVUnENNDjy5qqj7bZf5088MTNY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$cCVUnENNDjy5qqj7bZf5088MTNY;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createAndAddNavStubView()V
    .locals 2

    .line 329
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$dd-vXYW4zcjC8-w1GMSZPMaj3CE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$dd-vXYW4zcjC8-w1GMSZPMaj3CE;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    .line 813
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getTopActivity(Z)Landroid/content/ComponentName;
    .locals 4

    .line 818
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDisplayCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 819
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 820
    invoke-static {}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getInstance()Lcom/miui/home/recents/ActivityObserverLauncherImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/ActivityObserverLauncherImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object p1

    const-string v0, "RecentsImpl"

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopActivity from observer.   cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    .line 824
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 828
    :cond_1
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const-string v0, "RecentsImpl"

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopActivity from AMS.   cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object p1
.end method

.method private hideBackStubWindow()V
    .locals 2

    .line 705
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$PjruglwnYqTkXXPpW0tLe_ds2Bc;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$PjruglwnYqTkXXPpW0tLe_ds2Bc;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideNavStubView()V
    .locals 2

    .line 364
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$H3njI-j_ay7eOyOVNetRbqurkso;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$H3njI-j_ay7eOyOVNetRbqurkso;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initGestureStub(I)V
    .locals 1

    .line 492
    new-instance p1, Lcom/miui/home/recents/GestureStubView;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/GestureStubView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    .line 493
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setDefaultProperty(Lcom/miui/home/recents/GestureStubView;I)V

    .line 495
    new-instance p1, Lcom/miui/home/recents/GestureStubView;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/GestureStubView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    .line 496
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setDefaultProperty(Lcom/miui/home/recents/GestureStubView;I)V

    .line 497
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    return-void
.end method

.method private initHideGestureLine(Landroid/content/Context;)V
    .locals 3

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 216
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

    .line 675
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.mfashiongallery.emag.morning.MorningGreetActivity:com.android.deskclock.activity.AlarmAlertFullScreenActivity"

    .line 678
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private isCloudProviderExist()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    .line 211
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

    .line 321
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    return v0
.end method

.method public static synthetic lambda$addBackStubWindow$6(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 484
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->initGestureStub(I)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    .line 487
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    return-void
.end method

.method public static synthetic lambda$clearBackStubWindow$7(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->clearGestureStub()V

    .line 514
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->clearGestureStub()V

    .line 518
    iput-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 521
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$createAndAddNavStubView$2(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-nez v0, :cond_1

    const-string v0, "RecentsImpl"

    const-string v1, "createAndAddNavStubView"

    .line 331
    .line 332
    new-instance v0, Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/NavStubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 333
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->onSystemUiFlagsChanged(I)V

    .line 334
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setHideGestureLine(Z)V

    .line 338
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 339
    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 338
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$disableBackStubWindow$11(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 3

    const-string v0, "RecentsImpl"

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableBackStubWindow    disableTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$disableTouchBySwipeStatusBar$10(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 3

    const-string v0, "RecentsImpl"

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableTouchBySwipeStatusBar    disable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouchBySwipeStatusBar(Z)V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView;->disableTouchBySwipeStatusBar(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$hideBackStubWindow$9(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    const-string v0, "RecentsImpl"

    const-string v1, "hideBackStubWindow"

    .line 706
    .line 707
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStubDelay()V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    if-eqz v0, :cond_1

    .line 712
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStubDelay()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$hideNavStubView$5(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    const-string v0, "RecentsImpl"

    const-string v1, "hideNavStubView"

    .line 366
    .line 367
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onSystemUiFlagsChanged$12(Lcom/miui/home/recents/BaseRecentsImpl;I)V
    .locals 1

    .line 903
    iput p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    .line 904
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->onSystemUiFlagsChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$registerCloudDataObserver$0(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->isCloudProviderExist()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$registerCloudDataObserver$1(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Boolean;)V
    .locals 3

    .line 155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCloudDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$removeNavStubView$3(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    const-string v0, "RecentsImpl"

    const-string v1, "removeNavStubView"

    .line 347
    .line 348
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$requestApplyInsetsOfNavStubView$13(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$showBackStubWindow$8(Lcom/miui/home/recents/BaseRecentsImpl;I)V
    .locals 3

    const-string v0, "RecentsImpl"

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBackStubWindow  mHasNavigationBar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mDisabledByDriveMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    if-nez v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 691
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 692
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->initGestureStub(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 695
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubLeft:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    .line 696
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mGestureStubRight:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->showGestureStub()V

    goto :goto_0

    .line 698
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$showNavStubView$4(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    const-string v0, "RecentsImpl"

    const-string v1, "showNavStubView"

    .line 357
    .line 358
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private readCloudDataForFsg()V
    .locals 2

    .line 757
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 758
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mReadCloudRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerCloudDataObserver()V
    .locals 3

    .line 152
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$fDPNA50hhg1TcKAdq3chg7QH6YY;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$fDPNA50hhg1TcKAdq3chg7QH6YY;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$j4rUa92d8HQEWqOYgeH-zpcmYDU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$j4rUa92d8HQEWqOYgeH-zpcmYDU;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private registerRecentsLayoutStyleObserver()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLayoutStyleObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$1;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$1;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLayoutStyleObserver:Landroid/database/ContentObserver;

    .line 170
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "task_stack_view_layout_style"

    .line 171
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLayoutStyleObserver:Landroid/database/ContentObserver;

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerScreeningModeObserver()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$3;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$3;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    .line 255
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

    .line 257
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mCastModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerSuperSavePowerObserver()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$2;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_supersave_mode_open"

    .line 204
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 203
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSuperSavePowerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private removeNavStubView()V
    .locals 2

    .line 345
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$Axbn503pPWhOfHfOytu52o1swwU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$Axbn503pPWhOfHfOytu52o1swwU;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDefaultProperty(Lcom/miui/home/recents/GestureStubView;I)V
    .locals 3

    .line 501
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

    .line 503
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView;->disableQuickSwitch(Z)V

    .line 504
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/GestureStubView;->enableGestureBackAnimation(Z)V

    .line 505
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/GestureStubView;->setGestureStubPosition(I)V

    .line 506
    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->adaptAndRender()V

    return-void
.end method

.method private setFSGNavBar(Z)V
    .locals 3

    const-string v0, "RecentsImpl"

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFSGNavBar, force_fsg_nav_bar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method private setTaskStackViewLayoutStyle(ILandroid/content/Context;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStyleValue()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 178
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->create(ILandroid/content/Context;)Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    const-string p1, "RecentsImpl"

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TaskStackViewLayoutStyle change to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 180
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/miui/home/recents/messages/TaskStackViewLayoutStyleChangeEvent;

    invoke-direct {p2}, Lcom/miui/home/recents/messages/TaskStackViewLayoutStyleChangeEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private showBackStubWindow()V
    .locals 1

    const/4 v0, -0x1

    .line 682
    invoke-direct {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow(I)V

    return-void
.end method

.method private showBackStubWindow(I)V
    .locals 2

    .line 686
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$5HMhFp3kwocquWhIVEJyOtgVW8Y;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$5HMhFp3kwocquWhIVEJyOtgVW8Y;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showNavStubView()V
    .locals 2

    .line 355
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$BHp_tKhsx8HSVty1VPDCGHASdYY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$BHp_tKhsx8HSVty1VPDCGHASdYY;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateFsgWindowState()V
    .locals 4

    .line 453
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mHasNavigationBar:Z

    if-nez v0, :cond_0

    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RecentsImpl"

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFsgWindowState    isOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   mDisabledByDriveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   mIsUseMiuiHomeAsDefaultHome="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 460
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mDisabledByDriveMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eqz v0, :cond_2

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-nez v0, :cond_1

    const-string v0, "RecentsImpl"

    const-string v1, "navstubview will be added: updateFsgWindowState"

    .line 463
    .line 464
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->createAndAddNavStubView()V

    .line 466
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->addBackStubWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "RecentsImpl"

    const-string v1, "navstubview will be removed: updateFsgWindowState"

    .line 472
    .line 473
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->removeNavStubView()V

    .line 474
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->clearBackStubWindow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateStatusBarExpansion(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "typefrom_status_bar_expansion"

    .line 604
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 605
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    :cond_0
    return-void
.end method

.method private updateUseLauncherRecentsAndFsGesture()V
    .locals 2

    .line 325
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

    .line 801
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    return-void
.end method

.method public adaptToTopActivity(Z)V
    .locals 3

    .line 805
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity(Z)Landroid/content/ComponentName;

    move-result-object p1

    const-string v0, "RecentsImpl"

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adaptToTopActivity   cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 808
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public disableBackStubWindow(Z)V
    .locals 2

    .line 730
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$La2ODj0dNKn6-Vh6rT6qV87xdgA;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$La2ODj0dNKn6-Vh6rT6qV87xdgA;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disableTouchBySwipeStatusBar(Z)V
    .locals 2

    .line 718
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$dZ_TEX6Dg0_0NuLI81uZGIvccds;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$dZ_TEX6Dg0_0NuLI81uZGIvccds;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getNavStubView()Lcom/miui/home/recents/NavStubView;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    return-object v0
.end method

.method public getSystemUiStateFlags()I
    .locals 1

    .line 911
    iget v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mSystemUiFlags:I

    return v0
.end method

.method public getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    return-object v0
.end method

.method public isTaskStackViewLayoutStyleVertical()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mTaskStackViewLayoutStyle:Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStyleValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 742
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->modifyTransformVisible(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 924
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

    .line 929
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 932
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onThemeChanged()V

    :cond_3
    if-eqz v1, :cond_4

    .line 935
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onLanguageChange()V

    :cond_4
    return-void
.end method

.method public onEnterOrExitSmallWindow(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 148
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 793
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    .line 794
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz p1, :cond_0

    .line 795
    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->resetHomeStackBound()V

    :cond_0
    return-void
.end method

.method public onResumed(Ljava/lang/String;)V
    .locals 5

    const-string v0, "RecentsImpl"

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResumed className="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   mIsInAnotherPro="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastResumedClassName:Ljava/lang/String;

    .line 838
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLocalCtrlActs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 844
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "com.miui.home.launcher.Launcher:com.miui.personalassistant.fake.FakeStartActivity:com.miui.personalassistant.fake.FakeEndActivity"

    .line 849
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 850
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 852
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_3
    return-void

    .line 857
    :cond_4
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->disableTouchBySwipeStatusBar(Z)V

    .line 858
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackActListStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 859
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    .line 860
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    goto :goto_1

    .line 861
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 862
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    .line 863
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->disableBackStubWindow(Z)V

    .line 864
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    .line 865
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNoBackAndHomeActListStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 866
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    .line 867
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    .line 869
    :cond_7
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    .line 870
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->disableBackStubWindow(Z)V

    .line 871
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    :goto_1
    const-string p1, "lithium"

    .line 874
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 2

    .line 902
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$mC9zZmMqwvdPQngA2fYLVIJdPe0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$mC9zZmMqwvdPQngA2fYLVIJdPe0;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestApplyInsetsOfNavStubView()V
    .locals 2

    .line 915
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$O-kmo5qBBQTPoFJ0nQboZMIGPCI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$O-kmo5qBBQTPoFJ0nQboZMIGPCI;-><init>(Lcom/miui/home/recents/BaseRecentsImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIsUseMiuiHomeAsDefaultHome(Z)V
    .locals 3

    const-string v0, "RecentsImpl"

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsUseMiuiHomeAsDefaultHome    isUseMiuiHomeAsDefaultHome="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mIsUseMiuiHomeAsDefaultHome="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    if-eq v0, p1, :cond_0

    .line 446
    iput-boolean p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsUseMiuiHomeAsDefaultHome:Z

    .line 447
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateUseLauncherRecentsAndFsGesture()V

    .line 448
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->updateFsgWindowState()V

    :cond_0
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public updateFsgWindowVisibilityState(ZLjava/lang/String;)V
    .locals 4

    .line 610
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RecentsImpl"

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFsgWindowVisibilityState   isEnter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   typeFrom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   isOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   mIsInAnotherPro="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   mIsStatusBarExpansion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsInAnotherPro:Z

    if-nez v1, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "typefrom_home"

    .line 620
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mIsStatusBarExpansion:Z

    if-eqz v0, :cond_1

    return-void

    .line 624
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->updateStatusBarExpansion(ZLjava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    .line 628
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "typefrom_ai_voice_assist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "typefrom_home"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "typefrom_demo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_3
    const-string v0, "typefrom_partial_screenshot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "typefrom_status_bar_expansion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "typefrom_provision"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "typefrom_landscape_overview"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "typefrom_keyguard"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 651
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    .line 652
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    .line 647
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    .line 643
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    .line 644
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    goto :goto_1

    .line 637
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_6

    .line 638
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    .line 639
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    .line 632
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideNavStubView()V

    .line 633
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    :cond_3
    const-string p1, "typefrom_keyguard"

    .line 656
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl;->mLastResumedClassName:Ljava/lang/String;

    .line 657
    invoke-direct {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->isAllowUpdateFsgStateFromKeyguard(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 658
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    .line 659
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showBackStubWindow()V

    goto :goto_1

    :cond_4
    const-string p1, "typefrom_home"

    .line 660
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 661
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p2, "com.miui.home.launcher.Launcher:com.miui.personalassistant.fake.FakeStartActivity:com.miui.personalassistant.fake.FakeEndActivity"

    .line 662
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 663
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->showNavStubView()V

    .line 664
    invoke-direct {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->hideBackStubWindow()V

    goto :goto_1

    .line 667
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3d22c45f -> :sswitch_7
        -0x3a19d748 -> :sswitch_6
        -0x3376ffc6 -> :sswitch_5
        0x18abd181 -> :sswitch_4
        0x1f23e11f -> :sswitch_3
        0x4025cb5e -> :sswitch_2
        0x4027c25a -> :sswitch_1
        0x5dc52872 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
