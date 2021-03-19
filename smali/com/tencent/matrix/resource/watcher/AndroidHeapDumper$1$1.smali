.class Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1$1;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;Landroid/widget/Toast;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1$1;->this$1:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;

    iput-object p2, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1$1;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1$1;->this$1:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;

    iget-object v0, v0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;->val$waitingForToast:Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;

    iget-object v1, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1$1;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method
