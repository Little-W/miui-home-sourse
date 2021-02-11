.class Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->scheduleApply([Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

.field final synthetic val$params:[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

.field final synthetic val$toApplySeqNo:I


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;I[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    iput p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$toApplySeqNo:I

    iput-object p3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$params:[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameDraw(J)V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$100(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$100(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    .line 96
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$params:[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 97
    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$params:[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    aget-object v3, v3, v2

    .line 99
    iget-object v4, v3, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    .line 100
    iget-object v5, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {v5}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$100(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v0, v4, v5, p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->deferTransactionUntil(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/view/Surface;J)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 101
    invoke-static {v0, v3}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 104
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$200(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$toApplySeqNo:I

    invoke-static {p1, v1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 91
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$200(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$toApplySeqNo:I

    invoke-static {p1, v1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
