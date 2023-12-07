.class Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HalfHomeHoldState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const-string v1, "HalfHomeHoldState enter"

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 280
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->enterHomeHoldState()V

    return-void
.end method

.method public exit()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const-string v1, "HalfHomeHoldState exit"

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 286
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->exitHomeHoldState()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HalfHomeHoldState msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 292
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 315
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToRecents()V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    goto :goto_0

    .line 305
    :pswitch_3
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    goto :goto_0

    .line 299
    :pswitch_4
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->actionMoveHomeTaskHold()V

    goto :goto_0

    .line 294
    :pswitch_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->isToHomeDragState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfHomeHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStateMachine;->access$1900(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfHomeDragState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
