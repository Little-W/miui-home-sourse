.class public abstract Lcom/market/sdk/IDesktopRecommendResponse$Stub;
.super Landroid/os/Binder;
.source "IDesktopRecommendResponse.java"

# interfaces
.implements Lcom/market/sdk/IDesktopRecommendResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/IDesktopRecommendResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/IDesktopRecommendResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.market.sdk.IDesktopRecommendResponse"

.field static final TRANSACTION_onLoadFailed:I = 0x2

.field static final TRANSACTION_onLoadSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.market.sdk.IDesktopRecommendResponse"

    .line 14
    invoke-virtual {p0, p0, v0}, Lcom/market/sdk/IDesktopRecommendResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/market/sdk/IDesktopRecommendResponse;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.market.sdk.IDesktopRecommendResponse"

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/market/sdk/IDesktopRecommendResponse;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/market/sdk/IDesktopRecommendResponse;

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/market/sdk/IDesktopRecommendResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/market/sdk/IDesktopRecommendResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x1

    const-string v1, "com.market.sdk.IDesktopRecommendResponse"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 42
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 61
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/market/sdk/IDesktopRecommendResponse$Stub;->onLoadFailed()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 47
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    sget-object p1, Lcom/market/sdk/DesktopRecommendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/market/sdk/DesktopRecommendInfo;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0, p1}, Lcom/market/sdk/IDesktopRecommendResponse$Stub;->onLoadSuccess(Lcom/market/sdk/DesktopRecommendInfo;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
