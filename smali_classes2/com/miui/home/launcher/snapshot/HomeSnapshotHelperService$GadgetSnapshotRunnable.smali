.class Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;
.super Ljava/lang/Object;
.source "HomeSnapshotHelperService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GadgetSnapshotRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGadgetType:I

.field private mGadgetZipFilePath:Ljava/lang/String;

.field private mSaveSnapshotPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mContext:Landroid/content/Context;

    .line 87
    iput p3, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mGadgetType:I

    .line 88
    iput-object p4, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mGadgetZipFilePath:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mSaveSnapshotPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mSaveSnapshotPath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gadgetZipPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mGadgetZipFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " saveShotPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mSaveSnapshotPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "snapshot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mGadgetType:I

    .line 98
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadgetForSnapshot(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/ConfigableGadget;

    .line 100
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v2, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;

    iget-object v3, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mGadgetZipFilePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->access$100(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;Ljava/lang/String;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 104
    iget-object v2, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 110
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    invoke-direct {v3, v5, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/4 v5, -0x3

    .line 112
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v5, "GadgetSnapshot"

    .line 113
    invoke-virtual {v3, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, -0x9

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 116
    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onCreate()V

    .line 129
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onResume()V

    .line 131
    new-instance v3, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;-><init>(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;Lcom/miui/home/launcher/gadget/ConfigableGadget;Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V

    const-wide/16 v0, 0x7d0

    .line 149
    invoke-virtual {v3, v4, v0, v1}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable$2;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
