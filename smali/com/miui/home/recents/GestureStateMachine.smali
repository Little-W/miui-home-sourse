.class public Lcom/miui/home/recents/GestureStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;,
        Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$AppDragState;,
        Lcom/miui/home/recents/GestureStateMachine$HomeTaskHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$HomeDragState;,
        Lcom/miui/home/recents/GestureStateMachine$InitState;
    }
.end annotation


# instance fields
.field private mAppDragState:Lcom/miui/home/recents/GestureStateMachine$AppDragState;

.field private mAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

.field private mHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

.field private mHomeTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HomeTaskHoldState;

.field private mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

.field mNavStubView:Lcom/miui/home/recents/NavStubView;

.field private mQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

.field private mRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

.field private mRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    .line 41
    invoke-virtual {p2}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 31
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$InitState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$InitState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    .line 32
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    .line 33
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HomeTaskHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HomeTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HomeTaskHoldState;

    .line 34
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$AppDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppDragState:Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    .line 35
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

    .line 36
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

    .line 37
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    .line 38
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;

    .line 42
    iput-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 43
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 44
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 45
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HomeTaskHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 46
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppDragState:Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 47
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppDragState:Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 48
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 49
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 50
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 51
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStateMachine;->start()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppDragState:Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HomeTaskHoldState;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HomeTaskHoldState;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->logMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HomeDragState;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    return-object p0
.end method

.method private logMsg(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GestureStateMachine"

    .line 63
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isInAppTaskHoldState()Z
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

    return v0
.end method

.method public removeCallbacksAndMessage()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
