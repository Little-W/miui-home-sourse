.class Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HalfQuickSwitchTaskHoldState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 775
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HalfQuickSwitchTaskHoldState msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 779
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 802
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 803
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 805
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToRecents(Z)V

    goto :goto_0

    .line 799
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchTaskIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 796
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchTaskIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 793
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchTaskIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 790
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchTaskIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 784
    :pswitch_5
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHome()V

    goto :goto_0

    .line 787
    :pswitch_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 781
    :pswitch_7
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfQuickSwitchTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->actionMoveHalfQuickSwitchTaskHold()V

    :goto_0
    return v1

    nop

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
