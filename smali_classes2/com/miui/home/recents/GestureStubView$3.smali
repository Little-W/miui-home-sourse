.class Lcom/miui/home/recents/GestureStubView$3;
.super Ljava/lang/Object;
.source "GestureStubView.java"

# interfaces
.implements Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDownInAnim()V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->cancelFinishAnim()V

    return-void
.end method

.method public onSwipeProcess(ZF)V
    .locals 1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    const/16 v0, 0x105

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 244
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    .line 248
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/GestureBackArrowView;->onActionMove(F)V

    return-void
.end method

.method public onSwipeStart(ZF)V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStubView;->access$402(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 221
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureBackArrowView;->setArrowFeedBackDone(Z)V

    .line 222
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$500(Lcom/miui/home/recents/GestureStubView;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwipeStart: needAnimation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GestureStubView"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 229
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/GestureBackArrowView;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$600(Lcom/miui/home/recents/GestureStubView;)V

    .line 231
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$700(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, p2}, Lcom/miui/home/recents/GestureStubView;->access$800(Lcom/miui/home/recents/GestureStubView;F)[I

    move-result-object p1

    .line 233
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p0

    aget p2, p1, v2

    int-to-float p2, p2

    aget v0, p1, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget p1, p1, v1

    int-to-float p1, p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/home/recents/GestureBackArrowView;->onActionDown(FFF)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p0

    const/4 p1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p2, p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->onActionDown(FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwipeStop(ZFZ)V
    .locals 5

    const-string v0, "GestureStubView"

    const-string v1, "onSwipeStop"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    .line 256
    iget-object p3, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p3}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/recents/GestureBackArrowView;->isArrowFeedBackDone()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v1

    .line 257
    :goto_1
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v2, v0}, Lcom/miui/home/recents/GestureStubView;->access$402(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 258
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v2}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object v2

    const/16 v3, 0x102

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/home/recents/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 260
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/16 v2, 0x14

    invoke-static {v0, v2}, Lcom/miui/home/recents/GestureStubView;->access$900(Lcom/miui/home/recents/GestureStubView;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$1000(Lcom/miui/home/recents/GestureStubView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object v0

    sget-object v2, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_2

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object v0

    sget-object v2, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    :cond_3
    :goto_2
    if-eqz p1, :cond_7

    .line 268
    sget-object p1, Lcom/miui/home/recents/GestureStubView$4;->$SwitchMap$com$miui$home$recents$GestureBackArrowView$ReadyState:[I

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureBackArrowView;->getCurrentState()Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_6

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    goto :goto_3

    .line 273
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1200(Lcom/miui/home/recents/GestureStubView;)Landroid/app/KeyguardManager;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p3}, Lcom/miui/home/recents/GestureStubView;->access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/home/recents/GestureStubView;->supportNextTask(Landroid/app/KeyguardManager;Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 274
    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1400(Lcom/miui/home/recents/GestureStubView;)Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p3}, Lcom/miui/home/recents/GestureStubView;->access$1500(Lcom/miui/home/recents/GestureStubView;)I

    move-result p3

    invoke-static {p1, v1, p3}, Lcom/miui/home/recents/GestureStubView;->getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-nez p1, :cond_8

    .line 275
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1600(Lcom/miui/home/recents/GestureStubView;)Landroid/os/Vibrator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_3

    .line 270
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x4

    invoke-static {p1, v0, p3}, Lcom/miui/home/recents/GestureStubView;->access$1100(Lcom/miui/home/recents/GestureStubView;IZ)V

    goto :goto_3

    .line 281
    :cond_7
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->onBackCancelled()V

    .line 283
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    const/16 p3, 0x105

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 284
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    invoke-static {p2}, Lcom/miui/home/recents/GesturesBackController;->convertOffset(F)F

    move-result p2

    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 285
    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$1700(Lcom/miui/home/recents/GestureStubView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    .line 284
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/GestureBackArrowView;->onActionUp(FLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onSwipeStopDirect()V
    .locals 2

    const-string v0, "GestureStubView"

    const-string v1, "onSwipeStopDirect"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStubView;->access$402(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 295
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/miui/home/recents/GestureStubView;->access$1800(Lcom/miui/home/recents/GestureStubView;I)V

    return-void
.end method

.method public onSwipeTriggerFailed()V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$3;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->onBackCancelled()V

    return-void
.end method
