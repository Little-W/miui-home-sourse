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

    .line 986
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V
    .locals 0

    .line 986
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView$H;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 989
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$2100(Lcom/miui/home/recents/GestureStubView;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 991
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 1080
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1081
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView;->isDisableQuickSwitch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1082
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto/16 :goto_4

    .line 1085
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$3000(Lcom/miui/home/recents/GestureStubView;)V

    .line 1086
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$1000(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    const v0, 0x3ea8f5c3    # 0.33f

    const/16 v1, 0x14

    if-nez p1, :cond_3

    .line 1087
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$900(Lcom/miui/home/recents/GestureStubView;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1088
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2200(Lcom/miui/home/recents/GestureStubView;)F

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$3100(Lcom/miui/home/recents/GestureStubView;)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$3200(Lcom/miui/home/recents/GestureStubView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 1089
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1091
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1095
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$900(Lcom/miui/home/recents/GestureStubView;I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1096
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureBackArrowView;->getCurrentState()Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq p1, v0, :cond_6

    .line 1097
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1099
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2200(Lcom/miui/home/recents/GestureStubView;)F

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$3100(Lcom/miui/home/recents/GestureStubView;)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$3200(Lcom/miui/home/recents/GestureStubView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    .line 1100
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    goto :goto_0

    .line 1102
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V

    .line 1105
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    const/16 v0, 0x105

    const-wide/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/recents/GestureStubView$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 1067
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2800(Lcom/miui/home/recents/GestureStubView;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    .line 1068
    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2800(Lcom/miui/home/recents/GestureStubView;)I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 1071
    :cond_7
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/GestureStubView;->access$2900(Lcom/miui/home/recents/GestureStubView;I)V

    .line 1072
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$2900(Lcom/miui/home/recents/GestureStubView;I)V

    goto :goto_2

    .line 1069
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/GestureStubView;->access$2900(Lcom/miui/home/recents/GestureStubView;I)V

    .line 1074
    :goto_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2100(Lcom/miui/home/recents/GestureStubView;)Landroid/view/MotionEvent;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1075
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2100(Lcom/miui/home/recents/GestureStubView;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1076
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStubView;->access$2102(Lcom/miui/home/recents/GestureStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto/16 :goto_4

    .line 1064
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2700(Lcom/miui/home/recents/GestureStubView;)V

    goto/16 :goto_4

    .line 1056
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/GestureStubView;->access$002(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 1057
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/GestureBackArrowView;->setVisibility(I)V

    .line 1058
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    const-string v0, "MSG_RESET_ANIMATING_STATUS"

    invoke-static {p1, v0}, Lcom/miui/home/recents/GestureStubView;->access$300(Lcom/miui/home/recents/GestureStubView;Ljava/lang/String;)V

    const-string p1, "GestureStubView"

    const-string v0, "reset animating status"

    .line 1061
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1045
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/GestureStubView;->access$2502(Lcom/miui/home/recents/GestureStubView;Z)Z

    .line 1046
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2600(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1047
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1, v3}, Lcom/miui/home/recents/GestureStubView;->setVisibility(I)V

    :cond_9
    const-string p1, "GestureStubView"

    const-string v0, "handleMessage MSG_RESET_GESTURE_STUB_TOUCHABLE"

    .line 1051
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_5
    if-eqz v0, :cond_b

    .line 995
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_3

    .line 999
    :cond_a
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2200(Lcom/miui/home/recents/GestureStubView;)F

    move-result p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 1000
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$2300(Lcom/miui/home/recents/GestureStubView;)F

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    const-string v2, "GestureStubView"

    .line 1003
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

    .line 1004
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mDownY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_e

    .line 1010
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_e

    .line 1011
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 1012
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1014
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureStubView;->access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureStubView$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_b
    :goto_3
    return-void

    .line 1020
    :pswitch_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    :cond_c
    const-string p1, "GestureStubView"

    const-string v0, "handleMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    .line 1025
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/GestureStubView;->setVisibility(I)V

    .line 1031
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2400(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GesturesBackController;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1032
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$2400(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GesturesBackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GesturesBackController;->reset()V

    :cond_d
    const/16 p1, 0x104

    .line 1035
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x14

    .line 1036
    invoke-virtual {p0, p1, v2, v3}, Lcom/miui/home/recents/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1039
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$H;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1, v1}, Lcom/miui/home/recents/GestureStubView;->access$2502(Lcom/miui/home/recents/GestureStubView;Z)Z

    const/16 p1, 0x101

    .line 1040
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 1041
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
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
