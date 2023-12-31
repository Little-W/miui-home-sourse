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
.field private hasBeenTimeout:Z

.field private mMsgUpType:I

.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 p1, -0x1

    .line 329
    iput p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    const/4 p1, 0x0

    .line 330
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->hasBeenTimeout:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 327
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const-string v1, "AppWaitToDragState enter"

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 335
    iput v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->hasBeenTimeout:Z

    .line 338
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0xc

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/GestureStateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppWaitToDragState msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMsgUpType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 344
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 346
    :pswitch_0
    iget p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    if-ne p1, v1, :cond_0

    .line 347
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStateMachine;->access$2800(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->finishRecentsActivityDirectly()V

    .line 350
    iput-boolean v2, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->hasBeenTimeout:Z

    goto :goto_0

    .line 354
    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->hasBeenTimeout:Z

    if-eqz p1, :cond_1

    .line 355
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishRecentsActivityDirectly()V

    goto :goto_0

    .line 357
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->access$2900(Lcom/miui/home/recents/GestureStateMachine;I)V

    .line 358
    iget p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_1

    .line 377
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishRecentsActivityDirectly()V

    goto :goto_0

    .line 371
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->enableInputProxy()V

    .line 372
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$2800(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 373
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    .line 374
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 364
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->enableInputProxy()V

    .line 365
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    goto :goto_0

    .line 360
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStateMachine;->access$2800(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$AppDragState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 361
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startToDragAnim()V

    goto :goto_0

    .line 389
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->what:I

    iput p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppWaitToDragState;->mMsgUpType:I

    :goto_0
    return v2

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
    .end packed-switch
.end method
