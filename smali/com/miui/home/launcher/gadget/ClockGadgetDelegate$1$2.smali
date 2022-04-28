.class Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;
.super Lcom/miui/launcher/views/MamlOnExternCommandListener;
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
.method constructor <init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    invoke-direct {p0}, Lcom/miui/launcher/views/MamlOnExternCommandListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMamlCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    const-string p2, "click"

    .line 327
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    new-instance p2, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;-><init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
