.class public Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;
.super Landroid/os/Handler;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmallWindowCropHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/os/Looper;)V
    .locals 0

    .line 3666
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 3667
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 3672
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3686
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$8100(Lcom/miui/home/recents/NavStubView;)V

    goto :goto_0

    .line 3683
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$8000(Lcom/miui/home/recents/NavStubView;)V

    goto :goto_0

    .line 3680
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$7900(Lcom/miui/home/recents/NavStubView;)V

    goto :goto_0

    .line 3677
    :pswitch_3
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {v0, p1}, Lcom/miui/home/recents/NavStubView;->access$7800(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3674
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$7700(Lcom/miui/home/recents/NavStubView;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
