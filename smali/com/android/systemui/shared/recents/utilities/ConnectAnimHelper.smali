.class public Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;
.super Ljava/lang/Object;
.source "ConnectAnimHelper.java"


# static fields
.field private static connectAnimHelper:Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;


# instance fields
.field private mCloseRunner:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

.field private mIsRequestingAnimation:Z

.field private mOpenRunner:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

.field private mRecentsAnimationListener:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mStopRunningAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mIsRequestingAnimation:Z

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;
    .locals 1

    .line 13
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->connectAnimHelper:Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->connectAnimHelper:Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    .line 16
    :cond_0
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->connectAnimHelper:Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    return-object v0
.end method


# virtual methods
.method public getCloseAnimationRunnerCompat()Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mCloseRunner:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    return-object p0
.end method

.method public getOpenAnimationRunnerCompat()Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mOpenRunner:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    return-object p0
.end method

.method public getRecentsAnimationListenerImpl()Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mRecentsAnimationListener:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    return-object p0
.end method

.method public isRequestingRecentAnimation()Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mIsRequestingAnimation:Z

    return p0
.end method

.method public runConnectAnimRunnable()V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 54
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setCloseAnimationRunnerCompat(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mCloseRunner:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    return-void
.end method

.method public setConnectAnimRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOpenAnimationRunnerCompat(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mOpenRunner:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    return-void
.end method

.method public setRecentsAnimationListener(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mRecentsAnimationListener:Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    return-void
.end method

.method public setRequestingAnimation(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mIsRequestingAnimation:Z

    return-void
.end method

.method public setStopRunningAnimRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mStopRunningAnimRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public stopRunningAnim()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->mStopRunningAnimRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
