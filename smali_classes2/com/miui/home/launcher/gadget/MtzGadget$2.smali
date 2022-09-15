.class Lcom/miui/home/launcher/gadget/MtzGadget$2;
.super Lcom/miui/launcher/views/MamlOnExternCommandListener;
.source "MtzGadget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/MtzGadget;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/MtzGadget;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/MtzGadget;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MtzGadget$2;->this$0:Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-direct {p0}, Lcom/miui/launcher/views/MamlOnExternCommandListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMamlCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    .line 131
    iget-object p2, p0, Lcom/miui/home/launcher/gadget/MtzGadget$2;->this$0:Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-static {p2}, Lcom/miui/home/launcher/gadget/MtzGadget;->access$000(Lcom/miui/home/launcher/gadget/MtzGadget;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "track_music"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, "start_activity"

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MtzGadget$2;->this$0:Lcom/miui/home/launcher/gadget/MtzGadget;

    new-instance p2, Lcom/miui/home/launcher/gadget/MtzGadget$2$1;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/gadget/MtzGadget$2$1;-><init>(Lcom/miui/home/launcher/gadget/MtzGadget$2;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/gadget/MtzGadget;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
