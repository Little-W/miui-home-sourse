.class Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HalfAppTaskHoldState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 650
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const-string v1, "HalfAppTaskHoldState enter"

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 661
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->checkTaskStackViewValid(Z)Z

    goto :goto_0

    .line 664
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->enterAppHoldState()V

    :cond_2
    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HalfAppTaskHoldState msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 671
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 718
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 719
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 720
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 722
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 725
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToRecents(Z)V

    goto/16 :goto_0

    .line 707
    :pswitch_1
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 708
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->canPerformQuickSwitch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 709
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchTaskIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 711
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHome()V

    goto/16 :goto_0

    .line 714
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 696
    :pswitch_2
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 697
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->canPerformQuickSwitch()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 698
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchTaskIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 700
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHome()V

    goto/16 :goto_0

    .line 703
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 689
    :pswitch_3
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 690
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchTaskIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 692
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 682
    :pswitch_4
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 683
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchTaskIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 685
    :cond_7
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 676
    :pswitch_5
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHome()V

    goto :goto_0

    .line 679
    :pswitch_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 673
    :pswitch_7
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->actionMoveHalfAppTaskHold()V

    :goto_0
    return v1

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
