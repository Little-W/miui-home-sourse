.class Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->access$000(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
