.class Lcom/miui/home/recents/GestureStateMachine$AppDragState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppDragState"
.end annotation


# instance fields
.field private lastWhat:I

.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 p1, -0x1

    .line 459
    iput p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->lastWhat:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 458
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$AppDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppDragState msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 463
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 507
    :pswitch_0
    iget v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->lastWhat:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 508
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->finishRecentsActivityDirectly()V

    goto/16 :goto_0

    .line 499
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v1, v1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto/16 :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->performAppToRecents(Z)V

    goto/16 :goto_0

    .line 492
    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->canPerformQuickSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v1, v1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto/16 :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    goto/16 :goto_0

    .line 485
    :pswitch_3
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->canPerformQuickSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v1, v1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    goto :goto_0

    .line 482
    :pswitch_4
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v1, v1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 479
    :pswitch_5
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v1, v1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 473
    :pswitch_6
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    goto :goto_0

    .line 476
    :pswitch_7
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v1, v1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 470
    :pswitch_8
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/recents/NavStubView;->actionMoveAppDrag(ZZ)V

    goto :goto_0

    .line 465
    :pswitch_9
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->isToAppHoldState(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStateMachine;->access$3200(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 514
    :cond_3
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    iput p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppDragState;->lastWhat:I

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
