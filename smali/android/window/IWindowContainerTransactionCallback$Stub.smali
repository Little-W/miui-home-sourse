.class public abstract Landroid/window/IWindowContainerTransactionCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/window/IWindowContainerTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IWindowContainerTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IWindowContainerTransactionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onTransactionReady:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.window.IWindowContainerTransactionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/window/IWindowContainerTransactionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerTransactionCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.window.IWindowContainerTransactionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/window/IWindowContainerTransactionCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    return-object v0

    :cond_1
    new-instance v0, Landroid/window/IWindowContainerTransactionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/window/IWindowContainerTransactionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method private getSurfaceControlTransaction(Landroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    const-class v0, Landroid/view/SurfaceControl$Transaction;

    const-string v1, "CREATOR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "IWindowContainerTransactionCallback"

    const-string v1, "get CREATOR fail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.window.IWindowContainerTransactionCallback"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, p2}, Landroid/window/IWindowContainerTransactionCallback$Stub;->getSurfaceControlTransaction(Landroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/window/IWindowContainerTransactionCallback$Stub;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V

    return v0

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
