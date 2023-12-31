.class public Lcom/miui/home/recents/GestureStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$HalfRecentsDragState;,
        Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;,
        Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;,
        Lcom/miui/home/recents/GestureStateMachine$AppDragState;,
        Lcom/miui/home/recents/GestureStateMachine$HalfAppWaitToDragState;,
        Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;,
        Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$HomeHoldState;,
        Lcom/miui/home/recents/GestureStateMachine$HalfHomeDragState;,
        Lcom/miui/home/recents/GestureStateMachine$HomeDragState;,
        Lcom/miui/home/recents/GestureStateMachine$InitState;
    }
.end annotation


# instance fields
.field private mAppDragState:Lcom/miui/home/recents/GestureStateMachine$AppDragState;

.field private mAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

.field private mAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;

.field private mHalfAppDragState:Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;

.field private mHalfAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;

.field private mHalfAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$HalfAppWaitToDragState;

.field private mHalfHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HalfHomeDragState;

.field private mHalfHomeHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;

.field private mHalfQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;

.field private mHalfRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$HalfRecentsDragState;

.field private mHalfRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;

.field private mHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

.field private mHomeHoldState:Lcom/miui/home/recents/GestureStateMachine$HomeHoldState;

.field private mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

.field mNavStubView:Lcom/miui/home/recents/NavStubView;

.field private mQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

.field private mRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

.field private mRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    .line 80
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 61
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$InitState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$InitState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    .line 62
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    .line 63
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HalfHomeDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HalfHomeDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HalfHomeDragState;

    .line 64
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HomeHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HomeHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeHoldState:Lcom/miui/home/recents/GestureStateMachine$HomeHoldState;

    .line 65
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfHomeHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;

    .line 66
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;

    .line 67
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HalfAppWaitToDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HalfAppWaitToDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$HalfAppWaitToDragState;

    .line 68
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$AppDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppDragState:Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    .line 69
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppDragState:Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;

    .line 70
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

    .line 71
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;

    .line 72
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

    .line 73
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;

    .line 74
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    .line 75
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsDragState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$HalfRecentsDragState;

    .line 76
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;

    .line 77
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;

    .line 81
    iput-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    .line 82
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 83
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 84
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeHoldState:Lcom/miui/home/recents/GestureStateMachine$HomeHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 85
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HalfHomeDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 86
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfHomeHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HalfHomeDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 87
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 88
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppDragState:Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 89
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppDragState:Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 90
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$HalfAppWaitToDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 91
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppDragState:Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$HalfAppWaitToDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 92
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppDragState:Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 93
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 94
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 95
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 96
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 97
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$HalfRecentsDragState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 98
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;

    iget-object p2, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$HalfRecentsDragState;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/GestureStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 99
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStateMachine;->start()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->logMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HomeDragState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfHomeDragState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfHomeDragState:Lcom/miui/home/recents/GestureStateMachine$HalfHomeDragState;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfAppWaitToDragState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$HalfAppWaitToDragState;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfRecentsDragState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfRecentsDragState:Lcom/miui/home/recents/GestureStateMachine$HalfRecentsDragState;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfQuickSwitchTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HomeHoldState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHomeHoldState:Lcom/miui/home/recents/GestureStateMachine$HomeHoldState;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfHomeHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppDragState:Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/miui/home/recents/GestureStateMachine;I)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppDragState:Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/miui/home/recents/GestureStateMachine;I)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfAppTaskHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mHalfRecentsHoldState:Lcom/miui/home/recents/GestureStateMachine$HalfRecentsHoldState;

    return-object p0
.end method

.method private logMsg(Ljava/lang/String;)V
    .locals 0

    const-string p0, "GestureStateMachine"

    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public canUpdateEndRect()Z
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GestureStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/miui/home/recents/GestureStateMachine;->mAppWaitToDragState:Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mInitState:Lcom/miui/home/recents/GestureStateMachine$InitState;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public removeCallbacksAndMessage()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeMessage(I)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->removeMessages(I)V

    return-void
.end method
