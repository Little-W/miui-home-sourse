.class final Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 762
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 766
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 773
    throw v2
.end method

.method public a(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 781
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 785
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v1

    .line 786
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {p1, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 788
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 789
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    move v1, v3

    .line 791
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception p1

    .line 791
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 793
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$a;->a:Landroid/os/IBinder;

    return-object v0
.end method
