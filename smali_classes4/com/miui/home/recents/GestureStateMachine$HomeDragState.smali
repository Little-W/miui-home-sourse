.class Lcom/miui/home/recents/GestureStateMachine$HomeDragState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeDragState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HomeDragState msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 161
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->actionMoveHomeDrag()V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->isToHomeHoldState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HomeDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStateMachine;->access$2600(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HomeHoldState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
