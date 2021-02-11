.class public abstract Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub;
.super Landroid/os/Binder;
.source "IPreinstallAd.java"

# interfaces
.implements Lcom/miui/msa/preinstall/v1/IPreinstallAd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/preinstall/v1/IPreinstallAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.msa.preinstall.v1.IPreinstallAd"

.field static final TRANSACTION_getPreinstallAdInfos:I = 0x1

.field static final TRANSACTION_getPreinstallAdInfosByTagId:I = 0x5

.field static final TRANSACTION_handleClick:I = 0x3

.field static final TRANSACTION_handleDislike:I = 0x4

.field static final TRANSACTION_handleDislikeByTagId:I = 0x6

.field static final TRANSACTION_handleView:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.msa.preinstall.v1.IPreinstallAd"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/msa/preinstall/v1/IPreinstallAd;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.msa.preinstall.v1.IPreinstallAd"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/msa/preinstall/v1/IPreinstallAd;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.miui.msa.preinstall.v1.IPreinstallAd"

    .line 107
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    sget-object p1, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    .line 116
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p0, v0, p1}, Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub;->handleDislikeByTagId(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    const-string p1, "com.miui.msa.preinstall.v1.IPreinstallAd"

    .line 95
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub;->getPreinstallAdInfosByTagId(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_2
    const-string p1, "com.miui.msa.preinstall.v1.IPreinstallAd"

    .line 81
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    sget-object p1, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    .line 89
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub;->handleDislike(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "com.miui.msa.preinstall.v1.IPreinstallAd"

    .line 66
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 69
    sget-object p1, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    .line 74
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub;->handleClick(Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;)Z

    move-result p1

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
    const-string p1, "com.miui.msa.preinstall.v1.IPreinstallAd"

    .line 57
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub;->handleView(Ljava/util/List;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    const-string p1, "com.miui.msa.preinstall.v1.IPreinstallAd"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/IPreinstallAd$Stub;->getPreinstallAdInfos(I)Ljava/util/List;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :cond_3
    const-string p1, "com.miui.msa.preinstall.v1.IPreinstallAd"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
