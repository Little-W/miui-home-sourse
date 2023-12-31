.class public Lcom/miui/home/recents/NavStubView$TopWindowCropHandler;
.super Landroid/os/Handler;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopWindowCropHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/os/Looper;)V
    .locals 0

    .line 7547
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$TopWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 7548
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 7553
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 7567
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$TopWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$10000(Lcom/miui/home/recents/NavStubView;)V

    goto :goto_0

    .line 7564
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$TopWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$9900(Lcom/miui/home/recents/NavStubView;)V

    goto :goto_0

    .line 7561
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$TopWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$9800(Lcom/miui/home/recents/NavStubView;)V

    goto :goto_0

    .line 7558
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$TopWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/NavStubView$MotionEventPosition;

    invoke-static {p0, p1}, Lcom/miui/home/recents/NavStubView;->access$9700(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$MotionEventPosition;)V

    goto :goto_0

    .line 7555
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$TopWindowCropHandler;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$9600(Lcom/miui/home/recents/NavStubView;)V

    :goto_0
    return-void
.end method
