.class Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->addAfterApplyCallback(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

.field final synthetic val$afterApplyCallback:Ljava/lang/Runnable;

.field final synthetic val$oldCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;->this$0:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;->val$afterApplyCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;->val$oldCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;->val$afterApplyCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;->val$oldCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
