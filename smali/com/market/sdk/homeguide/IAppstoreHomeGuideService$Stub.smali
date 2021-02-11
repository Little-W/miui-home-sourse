.class public abstract Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub;
.super Landroid/os/Binder;
.source "IAppstoreHomeGuideService.java"

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

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.market.sdk.homeguide.IAppstoreHomeGuideService"

    .line 14
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

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;

    return-object v0

    .line 29
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.market.sdk.homeguide.IAppstoreHomeGuideService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 68
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 76
    :cond_0
    invoke-virtual {p0, v1}, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub;->show(Landroid/os/ResultReceiver;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 47
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    sget-object p1, Lcom/market/sdk/homeguide/HomeUserGuideData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/market/sdk/homeguide/HomeUserGuideData;

    .line 55
    :cond_1
    invoke-virtual {p0, v1}, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub;->ready(Lcom/market/sdk/homeguide/HomeUserGuideData;)Lcom/market/sdk/homeguide/HomeUserGuideResult;

    move-result-object p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p1, p3, v2}, Lcom/market/sdk/homeguide/HomeUserGuideResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 42
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
