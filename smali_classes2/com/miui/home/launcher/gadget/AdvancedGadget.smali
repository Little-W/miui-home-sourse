.class public abstract Lcom/miui/home/launcher/gadget/AdvancedGadget;
.super Lcom/miui/home/launcher/gadget/Gadget;
.source "AdvancedGadget.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Gadget;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method protected cleanUpView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-static {p2}, Lcom/miui/launcher/utils/MamlUtils;->clearUpView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 40
    invoke-static {p1, p0}, Lcom/miui/launcher/utils/MamlUtils;->setOnExternCommandListener(Ljava/lang/Object;Lcom/miui/launcher/views/MamlOnExternCommandListener;)V

    return-void
.end method

.method public onDeleted()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->cleanUp()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->cleanUp()V

    return-void
.end method
