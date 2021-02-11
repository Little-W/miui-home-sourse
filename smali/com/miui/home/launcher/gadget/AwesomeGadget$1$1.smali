.class Lcom/miui/home/launcher/gadget/AwesomeGadget$1$1;
.super Ljava/lang/Object;
.source "AwesomeGadget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/AwesomeGadget$1;->onMamlCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/gadget/AwesomeGadget$1;

.field final synthetic val$strPara:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/AwesomeGadget$1;Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget$1$1;->this$1:Lcom/miui/home/launcher/gadget/AwesomeGadget$1;

    iput-object p2, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget$1$1;->val$strPara:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget$1$1;->this$1:Lcom/miui/home/launcher/gadget/AwesomeGadget$1;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/AwesomeGadget$1;->this$0:Lcom/miui/home/launcher/gadget/AwesomeGadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget$1$1;->val$strPara:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget$1$1;->this$1:Lcom/miui/home/launcher/gadget/AwesomeGadget$1;

    iget-object v2, v2, Lcom/miui/home/launcher/gadget/AwesomeGadget$1;->this$0:Lcom/miui/home/launcher/gadget/AwesomeGadget;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->startActivity(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
