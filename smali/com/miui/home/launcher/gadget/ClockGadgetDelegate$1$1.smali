.class Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$1;
.super Lcom/miui/home/launcher/gadget/AwesomeClock;
.source "ClockGadgetDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;Landroid/content/Context;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$1;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/gadget/AwesomeClock;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$1;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$400(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
