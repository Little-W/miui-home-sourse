.class Lcom/miui/home/recents/GestureStateMachine$InitState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$InitState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$InitState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$InitState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitState msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$800(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    .line 76
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$InitState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$900(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HomeDragState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 77
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x65

    if-ne v0, v2, :cond_2

    .line 78
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$InitState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$1000(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 79
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x66

    if-ne v0, v2, :cond_3

    .line 80
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$InitState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$1100(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 81
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x67

    if-ne p1, v0, :cond_4

    .line 82
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$InitState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$1200(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 84
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$InitState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->startTailCatcher()V

    :goto_1
    return v1
.end method
