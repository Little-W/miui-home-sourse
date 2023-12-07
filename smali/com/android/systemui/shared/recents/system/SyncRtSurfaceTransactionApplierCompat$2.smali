.class Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    iput p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$toApplySeqNo:I

    iput-object p3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$params:[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameDraw(J)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$100(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$100(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$params:[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$params:[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->applyTo(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$300(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$300(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$300(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/ViewRootImpl;

    move-result-object v5

    const-class v7, Ljava/lang/Void;

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Class;

    const-class v6, Landroid/view/SurfaceControl$Transaction;

    aput-object v6, v8, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v8, v3

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v0, v9, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v9, v3

    const-string v6, "mergeWithNextTransaction"

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$200(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$toApplySeqNo:I

    invoke-static {p1, v1, p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    sget p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    if-nez p0, :cond_3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    sput p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    :cond_3
    sget p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid1:I

    if-nez p0, :cond_4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    sget p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    if-eq p0, p1, :cond_4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    sput p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid1:I

    :cond_4
    return-void

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$200(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;->val$toApplySeqNo:I

    invoke-static {p1, v1, p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
