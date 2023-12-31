.class Lcom/miui/home/launcher/gadget/MtzGadget$2$1;
.super Ljava/lang/Object;
.source "MtzGadget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/MtzGadget$2;->onMamlCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/gadget/MtzGadget$2;

.field final synthetic val$strPara:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/MtzGadget$2;Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MtzGadget$2$1;->this$1:Lcom/miui/home/launcher/gadget/MtzGadget$2;

    iput-object p2, p0, Lcom/miui/home/launcher/gadget/MtzGadget$2$1;->val$strPara:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget$2$1;->this$1:Lcom/miui/home/launcher/gadget/MtzGadget$2;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/MtzGadget$2;->this$0:Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/MtzGadget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget$2$1;->val$strPara:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget$2$1;->this$1:Lcom/miui/home/launcher/gadget/MtzGadget$2;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget$2;->this$0:Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/Utilities;->startActivity(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
