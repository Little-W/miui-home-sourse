.class final Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "InputConsumerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/InputConsumerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/InputConsumerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/system/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    .line 67
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 2

    const/4 p2, 0x1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->access$000(Lcom/android/systemui/shared/recents/system/InputConsumerController;)Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->access$000(Lcom/android/systemui/shared/recents/system/InputConsumerController;)Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/InputConsumerController$InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 83
    throw v0
.end method
