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

    .line 131
    iput-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->this$1:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;

    iput-object p2, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

    iput-object p3, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$wm:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$root:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 135
    iget-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getWidth()I

    move-result p1

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->getHeight()I

    move-result v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gadet size getLayout: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "snapshot"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->draw(Landroid/graphics/Canvas;)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->this$1:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;

    invoke-static {v0}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->access$200(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->access$300(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$wm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$root:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 147
    iget-object p0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->val$gadget:Lcom/miui/home/launcher/gadget/ConfigableGadget;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onDestroy()V

    return-void
.end method
