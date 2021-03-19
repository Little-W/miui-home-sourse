.class Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->showToast(Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;

.field final synthetic val$waitingForToast:Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;->this$0:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;

    iput-object p2, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;->val$waitingForToast:Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 103
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;->this$0:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;

    invoke-static {v1}, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->access$000(Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 105
    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 106
    iget-object v1, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;->this$0:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;

    invoke-static {v1}, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->access$000(Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 107
    sget v2, Lcom/tencent/matrix/resource/R$layout;->resource_canary_toast_wait_for_heapdump:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 108
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1$1;-><init>(Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;Landroid/widget/Toast;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method
