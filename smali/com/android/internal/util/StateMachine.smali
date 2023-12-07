.class public Lcom/android/internal/util/StateMachine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler;,
        Lcom/android/internal/util/StateMachine$LogRecords;,
        Lcom/android/internal/util/StateMachine$LogRec;
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/util/StateMachine;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    new-instance p1, Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V

    iput-object p1, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-void
.end method


# virtual methods
.method public final addState(Lcom/android/internal/util/State;)V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$900(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->access$900(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public final getCurrentState()Lcom/android/internal/util/IState;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object p0

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object p0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 1

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected onHalting()V
    .locals 0

    return-void
.end method

.method protected onPostHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onPreHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onQuitting()V
    .locals 0

    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected final removeMessages(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->removeMessages(I)V

    return-void
.end method

.method public sendMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageDelayed(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final setInitialState(Lcom/android/internal/util/State;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1100(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$3000(Lcom/android/internal/util/StateMachine$SmHandler;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "(null)"

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1400(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
