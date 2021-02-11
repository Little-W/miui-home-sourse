.class Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentsDragState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecentsDragState msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$800(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 332
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->performRecentsToHome()V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->performRecentsRest()V

    goto :goto_0

    .line 339
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->actionMoveRecentsDrag()V

    goto :goto_0

    .line 334
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->isToRecentsHoldState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$RecentsDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$1500(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$RecentsHoldState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
