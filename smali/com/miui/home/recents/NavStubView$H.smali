.class Lcom/miui/home/recents/NavStubView$H;
.super Landroid/os/Handler;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$1;)V
    .locals 0

    .line 924
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView$H;-><init>(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 927
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1400(Lcom/miui/home/recents/NavStubView;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 929
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 988
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$2000(Lcom/miui/home/recents/NavStubView;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 989
    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$2000(Lcom/miui/home/recents/NavStubView;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/NavStubView;->access$2100(Lcom/miui/home/recents/NavStubView;I)V

    .line 993
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v2}, Lcom/miui/home/recents/NavStubView;->access$2100(Lcom/miui/home/recents/NavStubView;I)V

    goto :goto_1

    .line 990
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/NavStubView;->access$2100(Lcom/miui/home/recents/NavStubView;I)V

    .line 995
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$1400(Lcom/miui/home/recents/NavStubView;)Landroid/view/MotionEvent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 996
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$1400(Lcom/miui/home/recents/NavStubView;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 997
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$1402(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto/16 :goto_3

    .line 1006
    :pswitch_1
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 1007
    new-instance v2, Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$2200(Lcom/miui/home/recents/NavStubView;)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2300(Lcom/miui/home/recents/NavStubView;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1008
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$2400(Lcom/miui/home/recents/NavStubView;)I

    move-result v3

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$2500(Lcom/miui/home/recents/NavStubView;)F

    move-result v4

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$2600(Lcom/miui/home/recents/NavStubView;)Z

    move-result v5

    const/4 v6, 0x1

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 1009
    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$2700(Lcom/miui/home/recents/NavStubView;)F

    move-result v7

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$2800(Lcom/miui/home/recents/NavStubView;)F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1008
    invoke-static/range {v1 .. v11}, Lcom/miui/home/recents/NavStubView;->access$2900(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V

    goto/16 :goto_3

    .line 1001
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    .line 1002
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView;->onPointerEvent(Landroid/view/MotionEvent;)Z

    .line 1003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_3

    .line 980
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/NavStubView;->access$1902(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 981
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v3}, Lcom/miui/home/recents/NavStubView;->access$1800(Lcom/miui/home/recents/NavStubView;Z)V

    .line 984
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage MSG_RESET_GESTURE_STUB_TOUCHABLE"

    goto/16 :goto_3

    :pswitch_4
    if-eqz v0, :cond_3

    .line 933
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$000(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    .line 937
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$1500(Lcom/miui/home/recents/NavStubView;)F

    move-result p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 938
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1600(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 941
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

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

    .line 942
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mDownY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    .line 947
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_5

    .line 948
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_5

    .line 949
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView$H;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    .line 950
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView$H;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 952
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView$H;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    .line 958
    :pswitch_5
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$000(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 963
    :cond_4
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    .line 968
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v2}, Lcom/miui/home/recents/NavStubView;->access$1800(Lcom/miui/home/recents/NavStubView;Z)V

    const/16 p1, 0x104

    .line 970
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3c

    .line 971
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/recents/NavStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 974
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v2}, Lcom/miui/home/recents/NavStubView;->access$1902(Lcom/miui/home/recents/NavStubView;Z)Z

    const/16 p1, 0x101

    .line 975
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 976
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/recents/NavStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xff
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
