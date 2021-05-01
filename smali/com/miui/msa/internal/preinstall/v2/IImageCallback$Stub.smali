.class public abstract Lcom/miui/msa/internal/preinstall/v2/IImageCallback$Stub;
.super Landroid/os/Binder;
.source "IImageCallback.java"

# interfaces
.implements Lcom/miui/msa/internal/preinstall/v2/IImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/internal/preinstall/v2/IImageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/internal/preinstall/v2/IImageCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.msa.internal.preinstall.v2.IImageCallback"

.field static final TRANSACTION_onImageLoadFailed:I = 0x2

.field static final TRANSACTION_onImageLoadSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.msa.internal.preinstall.v2.IImageCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/miui/msa/internal/preinstall/v2/IImageCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/msa/internal/preinstall/v2/IImageCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.msa.internal.preinstall.v2.IImageCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/miui/msa/internal/preinstall/v2/IImageCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/msa/internal/preinstall/v2/IImageCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/IImageCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/msa/internal/preinstall/v2/IImageCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.miui.msa.internal.preinstall.v2.IImageCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/IImageCallback$Stub;->onImageLoadFailed(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 53
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/IImageCallback$Stub;->onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
