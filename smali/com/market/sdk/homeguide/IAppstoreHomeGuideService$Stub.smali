.class public abstract Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.market.sdk.homeguide.IAppstoreHomeGuideService"

.field static final TRANSACTION_ready:I = 0x1

.field static final TRANSACTION_show:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.market.sdk.homeguide.IAppstoreHomeGuideService"

    invoke-virtual {p0, p0, v0}, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.market.sdk.homeguide.IAppstoreHomeGuideService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.market.sdk.homeguide.IAppstoreHomeGuideService"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/ResultReceiver;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub;->show(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/market/sdk/homeguide/HomeUserGuideData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/market/sdk/homeguide/HomeUserGuideData;

    :cond_4
    invoke-virtual {p0, v0}, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub;->ready(Lcom/market/sdk/homeguide/HomeUserGuideData;)Lcom/market/sdk/homeguide/HomeUserGuideResult;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_5

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v1}, Lcom/market/sdk/homeguide/HomeUserGuideResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1
.end method
