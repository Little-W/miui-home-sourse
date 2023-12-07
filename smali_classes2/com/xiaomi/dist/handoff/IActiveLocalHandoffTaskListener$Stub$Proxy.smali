.class Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.dist.handoff.IActiveLocalHandoffTaskListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub;->getDefaultImpl()Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;->onLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
