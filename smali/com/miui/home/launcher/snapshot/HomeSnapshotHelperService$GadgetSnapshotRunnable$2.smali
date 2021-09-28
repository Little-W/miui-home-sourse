.class Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;
.super Landroid/os/Handler;
.source "HomeSnapshotHelperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;

.field final synthetic val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

.field final synthetic val$root:Landroid/widget/LinearLayout;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;Lcom/miui/home/launcher/gadget/ConfigableGadget;Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->this$1:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;

    iput-object p2, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

    iput-object p3, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$wm:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$root:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 154
    iget-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getWidth()I

    move-result p1

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getHeight()I

    move-result v0

    const-string v1, "snapshot"

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gadet size getLayout: width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->draw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->this$1:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;

    invoke-static {v0}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->access$300(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->access$400(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$wm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$root:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 166
    iget-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onDestroy()V

    return-void
.end method
