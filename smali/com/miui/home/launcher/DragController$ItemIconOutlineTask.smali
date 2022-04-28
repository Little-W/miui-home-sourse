.class Lcom/miui/home/launcher/DragController$ItemIconOutlineTask;
.super Lcom/miui/home/launcher/DragController$OutlineTask;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemIconOutlineTask"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 1

    .line 660
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getScreenSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/DragController$OutlineTask;-><init>(Ljava/util/concurrent/Executor;Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method getOutline()Landroid/graphics/Bitmap;
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$ItemIconOutlineTask;->view:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/launcher/DragController$ItemIconOutlineTask;->scale:F

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragController;->createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
