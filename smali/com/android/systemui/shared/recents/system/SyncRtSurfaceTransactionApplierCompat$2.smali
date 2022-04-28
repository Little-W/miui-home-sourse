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

    .line 123
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    iput p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$toApplySeqNo:I

    iput-object p3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$params:[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameDraw(J)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$100(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$200(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$toApplySeqNo:I

    invoke-static {p1, v1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$params:[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-static {v0, v2, p1, p2, v3}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$300(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;ZJ[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 132
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$200(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$toApplySeqNo:I

    invoke-static {p1, v1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 134
    sget p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    if-nez p1, :cond_1

    .line 135
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    sput p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    .line 137
    :cond_1
    sget p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid1:I

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    sget p2, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    if-eq p1, p2, :cond_2

    .line 138
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    sput p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid1:I

    :cond_2
    return-void
.end method
