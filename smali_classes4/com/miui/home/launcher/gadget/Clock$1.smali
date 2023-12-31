.class Lcom/miui/home/launcher/gadget/Clock$1;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/Clock;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Clock;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/Clock;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Clock;->access$000(Lcom/miui/home/launcher/gadget/Clock;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-nez v0, :cond_1

    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Clock;->access$100(Lcom/miui/home/launcher/gadget/Clock;)V

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;->getUpdateInterval()I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Clock;->access$300(Lcom/miui/home/launcher/gadget/Clock;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/Clock$1;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/Clock;->access$200(Lcom/miui/home/launcher/gadget/Clock;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    rem-long/2addr v6, v4

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 48
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
