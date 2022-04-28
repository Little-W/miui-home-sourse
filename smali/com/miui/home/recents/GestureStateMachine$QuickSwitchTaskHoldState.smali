.class Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSwitchTaskHoldState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickSwitchTaskHoldState msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$900(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 355
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 378
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->performAppToRecents()V

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 372
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 369
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 366
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 360
    :pswitch_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    goto :goto_0

    .line 363
    :pswitch_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object v0, v0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 357
    :pswitch_7
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$QuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->actionMoveQuickSwitchTaskHold()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x3
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
