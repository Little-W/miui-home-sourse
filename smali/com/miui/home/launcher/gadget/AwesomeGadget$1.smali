.class Lcom/miui/home/launcher/gadget/AwesomeGadget$1;
.super Lcom/miui/launcher/views/MamlOnExternCommandListener;
.source "AwesomeGadget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/AwesomeGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/AwesomeGadget;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/AwesomeGadget;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget$1;->this$0:Lcom/miui/home/launcher/gadget/AwesomeGadget;

    invoke-direct {p0}, Lcom/miui/launcher/views/MamlOnExternCommandListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMamlCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1

    const-string p2, "start_activity"

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget$1;->this$0:Lcom/miui/home/launcher/gadget/AwesomeGadget;

    new-instance p2, Lcom/miui/home/launcher/gadget/AwesomeGadget$1$1;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/gadget/AwesomeGadget$1$1;-><init>(Lcom/miui/home/launcher/gadget/AwesomeGadget$1;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported command: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-void
.end method
