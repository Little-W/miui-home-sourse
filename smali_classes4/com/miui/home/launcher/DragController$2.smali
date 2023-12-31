.class Lcom/miui/home/launcher/DragController$2;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragController;->createOutlineAsync(Lcom/miui/home/launcher/DragController$OutlineTask;Lcom/miui/home/launcher/DragView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/AsyncTaskRunnable<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragController;

.field final synthetic val$dragView:Lcom/miui/home/launcher/DragView;

.field final synthetic val$task:Lcom/miui/home/launcher/DragController$OutlineTask;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragController;Lcom/miui/home/launcher/DragController$OutlineTask;Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$2;->this$0:Lcom/miui/home/launcher/DragController;

    iput-object p2, p0, Lcom/miui/home/launcher/DragController$2;->val$task:Lcom/miui/home/launcher/DragController$OutlineTask;

    iput-object p3, p0, Lcom/miui/home/launcher/DragController$2;->val$dragView:Lcom/miui/home/launcher/DragView;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Landroid/graphics/Bitmap;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/miui/home/launcher/DragController$2;->val$task:Lcom/miui/home/launcher/DragController$OutlineTask;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController$OutlineTask;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    .line 619
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragController$2;->doInBackground()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/miui/home/launcher/DragController$2;->val$dragView:Lcom/miui/home/launcher/DragView;

    if-eqz p0, :cond_0

    .line 628
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setOutline(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 619
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragController$2;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
