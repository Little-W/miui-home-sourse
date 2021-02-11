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
.field private final TRANSACTION_CODE_GET_FREEHOME_INFO:I

.field private final TRANSACTION_CODE_SNAPSHOT_GADGET:I

.field private final TRANSACTION_DESCRIPTOR:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.miui.home.snapshot_helper"

    .line 52
    iput-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->TRANSACTION_DESCRIPTOR:Ljava/lang/String;

    const/4 p1, 0x1

    .line 53
    iput p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->TRANSACTION_CODE_SNAPSHOT_GADGET:I

    const/4 p1, 0x2

    .line 54
    iput p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->TRANSACTION_CODE_GET_FREEHOME_INFO:I

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_0

    const-string p1, "com.miui.home.snapshot_helper"

    .line 59
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    const-string p1, "com.miui.home.snapshot_helper"

    .line 62
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;

    invoke-static {p1}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->access$000(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;

    iget-object v3, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;

    move-object v1, p2

    move-object v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$GadgetSnapshotRunnable;-><init>(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string p1, "com.miui.home.snapshot_helper"

    .line 72
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService$1;->this$0:Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;

    invoke-static {p1}, Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;->access$100(Lcom/miui/home/launcher/snapshot/HomeSnapshotHelperService;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 77
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method
