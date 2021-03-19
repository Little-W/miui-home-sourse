.class public abstract Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;
.super Landroid/os/Binder;
.source "ILauncherOverlayCallback.java"

# interfaces
.implements Lcom/miui/launcher/overlay/ILauncherOverlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/overlay/ILauncherOverlayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.launcher.overlay.ILauncherOverlayCallback"

.field static final TRANSACTION_call:I = 0x1

.field static final TRANSACTION_overlayScrollChanged:I = 0x3

.field static final TRANSACTION_overlayScrollEnd:I = 0x4

.field static final TRANSACTION_overlayScrollStart:I = 0x2

.field static final TRANSACTION_overlayStatusChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    .line 38
    invoke-virtual {p0, p0, v0}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/launcher/overlay/ILauncherOverlayCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    .line 49
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    instance-of v1, v0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;
    .locals 1

    .line 266
    sget-object v0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/launcher/overlay/ILauncherOverlayCallback;)Z
    .locals 1

    .line 256
    sget-object v0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 260
    sput-object p0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 257
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const-string v0, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->overlayStatusChanged(I)V

    return v2

    .line 112
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->overlayScrollEnd(F)V

    return v2

    .line 104
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->overlayScrollChanged(F)V

    return v2

    .line 96
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->overlayScrollStart(F)V

    return v2

    .line 71
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 83
    :goto_0
    invoke-virtual {p0, p1, p4, p2}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    .line 66
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
