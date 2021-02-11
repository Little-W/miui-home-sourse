.class Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget$1;
.super Lcom/miui/launcher/views/MamlOnExternCommandListener;
.source "FreeButtonAwesomeGadget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget$1;->this$0:Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;

    invoke-direct {p0}, Lcom/miui/launcher/views/MamlOnExternCommandListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMamlCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    const-string p2, "trigger"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget$1;->this$0:Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->access$000(Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;)Lcom/miui/home/launcher/upsidescene/FreeButtonState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->trigger()V

    :cond_0
    return-void
.end method
