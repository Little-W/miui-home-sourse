.class Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;
.super Landroid/os/Binder;
.source "HomeSnapshotHelperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final TRANSACTION_CODE_SNAPSHOT_GADGET:I

.field private final TRANSACTION_DESCRIPTOR:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.miui.home.snapshot_helper"

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->TRANSACTION_DESCRIPTOR:Ljava/lang/String;

    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->TRANSACTION_CODE_SNAPSHOT_GADGET:I

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.miui.home.snapshot_helper"

    const/4 v1, 0x1

    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_0

    .line 56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_0
    if-ne p1, v1, :cond_1

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;

    invoke-static {p1}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->access$000(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;

    iget-object v5, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;

    move-object v3, p2

    move-object v4, v5

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;-><init>(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 69
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method
