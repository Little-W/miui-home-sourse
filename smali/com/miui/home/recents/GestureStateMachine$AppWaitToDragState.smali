.class Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWaitToDragState"
.end annotation


# instance fields
.field private mMsgUpType:I

.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 p1, -0x1

    .line 185
    iput p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const-string v1, "AppWaitToDragState enter"

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$900(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 190
    iput v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    .line 192
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v1, 0xc

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/GestureStateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppWaitToDragState msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$900(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 200
    :pswitch_0
    iget p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    if-ne p1, v1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$1500(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->finishRecentsActivityDirectly()V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->access$1600(Lcom/miui/home/recents/GestureStateMachine;I)V

    .line 208
    iget p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_1

    .line 225
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->finishRecentsActivityDirectly()V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$1500(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 221
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    .line 222
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 214
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    goto :goto_0

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$1500(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 236
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->what:I

    iput p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
