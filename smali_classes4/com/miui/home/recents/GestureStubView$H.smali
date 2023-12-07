.class Lcom/miui/home/recents/GestureStubView$H;
.super Landroid/os/Handler;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 1159
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V
    .locals 0

    .line 1159
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView$H;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1162
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$2100(Lcom/miui/home/recents/GestureStubView;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1164
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "GestureStubView"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 1253
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1254
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->isDisableQuickSwitch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1255
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p0

    sget-object p1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto/16 :goto_4

    .line 1258
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$3100(Lcom/miui/home/recents/GestureStubView;)V

    .line 1259
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1000(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    const v0, 0x3ea8f5c3    # 0.33f

    const/16 v1, 0x14

    if-nez p1, :cond_3

    .line 1260
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$900(Lcom/miui/home/recents/GestureStubView;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1261
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2200(Lcom/miui/home/recents/GestureStubView;)F

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$3200(Lcom/miui/home/recents/GestureStubView;)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$3300(Lcom/miui/home/recents/GestureStubView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 1262
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1264
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1268
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$900(Lcom/miui/home/recents/GestureStubView;I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1269
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureBackArrowView;->getCurrentState()Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq p1, v0, :cond_6

    .line 1270
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1272
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2200(Lcom/miui/home/recents/GestureStubView;)F

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$3200(Lcom/miui/home/recents/GestureStubView;)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$3300(Lcom/miui/home/recents/GestureStubView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    .line 1273
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1275
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    .line 1278
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p0

    const/16 p1, 0x105

    const-wide/16 v0, 0x11

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 1240
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2900(Lcom/miui/home/recents/GestureStubView;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 1241
    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2900(Lcom/miui/home/recents/GestureStubView;)I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 1244
    :cond_7
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/GestureStubView;->access$3000(Lcom/miui/home/recents/GestureStubView;I)V

    .line 1245
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$3000(Lcom/miui/home/recents/GestureStubView;I)V

    goto :goto_2

    .line 1242
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/GestureStubView;->access$3000(Lcom/miui/home/recents/GestureStubView;I)V

    .line 1247
    :goto_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2100(Lcom/miui/home/recents/GestureStubView;)Landroid/view/MotionEvent;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1248
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2100(Lcom/miui/home/recents/GestureStubView;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1249
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/recents/GestureStubView;->access$2102(Lcom/miui/home/recents/GestureStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto/16 :goto_4

    .line 1237
    :pswitch_2
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$2800(Lcom/miui/home/recents/GestureStubView;)V

    goto/16 :goto_4

    .line 1228
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/GestureStubView;->access$102(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 1229
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setVisibility(I)V

    .line 1230
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureBackArrowView;->reset()V

    .line 1231
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    const-string p1, "MSG_RESET_ANIMATING_STATUS"

    invoke-static {p0, p1}, Lcom/miui/home/recents/GestureStubView;->access$2700(Lcom/miui/home/recents/GestureStubView;Ljava/lang/String;)V

    const-string p0, "reset animating status"

    .line 1234
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1219
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/GestureStubView;->access$2602(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 1220
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0, v3}, Lcom/miui/home/recents/GestureStubView;->access$2400(Lcom/miui/home/recents/GestureStubView;Z)V

    const-string p0, "handleMessage MSG_RESET_GESTURE_STUB_TOUCHABLE"

    .line 1223
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_5
    if-eqz v0, :cond_a

    .line 1168
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto/16 :goto_3

    .line 1172
    :cond_9
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2200(Lcom/miui/home/recents/GestureStubView;)F

    move-result p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 1173
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$2300(Lcom/miui/home/recents/GestureStubView;)F

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v1, v3

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage MSG_CHECK_GESTURE_STUB_TOUCHABLE diffX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " diffY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mDownX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mDownY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_d

    .line 1183
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_d

    .line 1184
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 1185
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1187
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_a
    :goto_3
    return-void

    .line 1193
    :pswitch_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    const-string p1, "handleMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    .line 1198
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$2400(Lcom/miui/home/recents/GestureStubView;Z)V

    .line 1204
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->onBackCancelled()V

    .line 1205
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2500(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GesturesBackController;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1206
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2500(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GesturesBackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GesturesBackController;->reset()V

    :cond_c
    const/16 p1, 0x104

    .line 1209
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x14

    .line 1210
    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/home/recents/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1213
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$2602(Lcom/miui/home/recents/GestureStubView;Z)Z

    const/16 p1, 0x101

    .line 1214
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 1215
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xff
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
