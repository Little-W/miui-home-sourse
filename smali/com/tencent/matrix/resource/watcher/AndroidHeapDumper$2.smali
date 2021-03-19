.class Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$2;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->cancelToast(Landroid/widget/Toast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;Landroid/widget/Toast;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$2;->this$0:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;

    iput-object p2, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$2;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$2;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method
