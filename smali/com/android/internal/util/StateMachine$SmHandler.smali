.class Lcom/android/internal/util/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/internal/util/State;

.field private mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/util/State;",
            "Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I

.field private mTransitionInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 687
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V
    .locals 2

    .line 1222
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 681
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    .line 684
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    .line 693
    new-instance v0, Lcom/android/internal/util/StateMachine$LogRecords;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>(Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    const/4 v0, -0x1

    .line 702
    iput v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 711
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    .line 714
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 758
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 761
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 1223
    iput-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    .line 1225
    iget-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1226
    iget-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;
    .locals 0

    .line 678
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .locals 0

    .line 678
    iget-boolean p0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine;
    .locals 0

    .line 678
    iget-object p0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 0

    .line 678
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object p0

    return-object p0
.end method

.method private final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 3

    .line 1165
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateInternal: E state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 1167
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1166
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 1171
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-nez v1, :cond_2

    .line 1174
    invoke-direct {p0, p2, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v1

    goto :goto_1

    :cond_3
    move-object p2, v0

    .line 1177
    :goto_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-nez v1, :cond_4

    .line 1179
    new-instance v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    .line 1180
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    :cond_4
    iget-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-ne v0, p2, :cond_5

    goto :goto_2

    .line 1186
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "state already added"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1188
    :cond_6
    :goto_2
    iput-object p1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 1189
    iput-object p2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    const/4 p1, 0x0

    .line 1190
    iput-boolean p1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1191
    iget-boolean p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addStateInternal: X stateInfo: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_7
    return-object v1
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .line 923
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine;->access$400(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 926
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->access$402(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->access$502(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;

    .line 930
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    .line 931
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 932
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->cleanup()V

    .line 933
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 934
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 935
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 936
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    .line 937
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 938
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 939
    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    return-void
.end method

.method private final completeConstruction()V
    .locals 5

    .line 946
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move v4, v1

    :goto_1
    if-eqz v3, :cond_2

    .line 956
    iget-object v3, v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    .line 962
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeConstruction: maxDepth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 964
    :cond_4
    new-array v0, v2, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 965
    new-array v0, v2, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 966
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->setupInitialStateStack()V

    const/4 v0, -0x2

    .line 969
    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 971
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string v1, "completeConstruction: X"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private final getCurrentState()Lcom/android/internal/util/IState;
    .locals 2

    .line 1148
    iget v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1151
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4

    move v0, p1

    .line 1028
    :goto_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    if-ne p1, v1, :cond_0

    .line 1031
    iput-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 1033
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1034
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v1}, Lcom/android/internal/util/State;->enter()V

    .line 1035
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1037
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    return-void
.end method

.method private final invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V
    .locals 4

    .line 1014
    :goto_0
    iget v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v2, v1, v0

    if-eq v2, p1, :cond_1

    .line 1016
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 1017
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1018
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/State;->exit()V

    .line 1019
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 v1, v1, -0x1

    .line 1020
    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 2

    .line 1270
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .line 1050
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1051
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1052
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1053
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 6

    .line 1066
    iget v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1067
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1070
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1071
    :cond_0
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 1076
    iput v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1077
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    .line 1078
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",startingIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 1080
    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private performTransitions(Lcom/android/internal/util/State;Landroid/os/Message;)V
    .locals 9

    .line 837
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v6, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 844
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    move p2, v8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 846
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    if-eqz p2, :cond_2

    .line 849
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 854
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    .line 858
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    if-eqz p1, :cond_5

    .line 864
    :goto_2
    iget-boolean p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string v0, "handleMessage: new destination call exit/enter"

    invoke-virtual {p2, v0}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 871
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object p2

    .line 873
    iput-boolean v8, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 874
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V

    .line 875
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result p2

    .line 876
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 884
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    .line 886
    iget-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    if-eq p1, p2, :cond_4

    move-object p1, p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 894
    iput-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    :cond_5
    if-eqz p1, :cond_7

    .line 902
    iget-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    if-ne p1, p2, :cond_6

    .line 906
    iget-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->onQuitting()V

    .line 907
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->cleanupAfterQuitting()V

    goto :goto_3

    .line 908
    :cond_6
    iget-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    if-ne p1, p2, :cond_7

    .line 914
    iget-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {p1}, Lcom/android/internal/util/StateMachine;->onHalting()V

    :cond_7
    :goto_3
    return-void
.end method

.method private final processMsg(Landroid/os/Message;)Lcom/android/internal/util/State;
    .locals 4

    .line 981
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    .line 982
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 986
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 987
    iget-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 989
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 993
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-nez v0, :cond_2

    .line 998
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 1001
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    .line 1002
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1006
    iget-object p1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private final setInitialState(Lcom/android/internal/util/State;)V
    .locals 3

    .line 1231
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1232
    :cond_0
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 3

    .line 1121
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    const/4 v1, 0x0

    .line 1126
    :goto_0
    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    if-eqz v0, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1128
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1126
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1132
    iput v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1134
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 1104
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object p1, v0, v1

    .line 1107
    iget-object p1, p1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eqz p1, :cond_1

    .line 1108
    iget-boolean v0, p1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v0, :cond_0

    .line 1110
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_2

    .line 1111
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",curStateInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 3

    .line 1237
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine;->access$700(Lcom/android/internal/util/StateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionTo called while transition already in progress to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new target state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_0
    check-cast p1, Lcom/android/internal/util/State;

    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 1242
    iget-boolean p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionTo: destState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    invoke-virtual {v1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 792
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    if-nez v0, :cond_6

    .line 793
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->onPreHandleMessage(Landroid/os/Message;)V

    .line 797
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: E msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 800
    :cond_1
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    const/4 v0, 0x0

    .line 804
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_2

    goto :goto_0

    .line 807
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v4, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    .line 810
    iput-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    const/4 v3, 0x0

    .line 811
    invoke-direct {p0, v3}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    goto :goto_1

    .line 813
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 806
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lcom/android/internal/util/State;

    move-result-object v0

    .line 816
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->performTransitions(Lcom/android/internal/util/State;Landroid/os/Message;)V

    .line 819
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v0, :cond_5

    const-string v3, "handleMessage: X"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 821
    :cond_5
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_6

    .line 822
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->onPostHandleMessage(Landroid/os/Message;)V

    :cond_6
    return-void
.end method
