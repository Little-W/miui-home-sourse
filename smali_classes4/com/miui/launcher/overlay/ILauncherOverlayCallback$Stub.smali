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

.field static final TRANSACTION_invoke:I = 0x6

.field static final TRANSACTION_overlayScrollChanged:I = 0x3

.field static final TRANSACTION_overlayScrollEnd:I = 0x4

.field static final TRANSACTION_overlayScrollStart:I = 0x2

.field static final TRANSACTION_overlayStatusChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    .line 41
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

    .line 52
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    instance-of v1, v0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlayCallback;
    .locals 1

    .line 311
    sget-object v0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/launcher/overlay/ILauncherOverlayCallback;)Z
    .locals 1

    .line 301
    sget-object v0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 305
    sput-object p0, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub$Proxy;->sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlayCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 302
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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.miui.launcher.overlay.ILauncherOverlayCallback"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 131
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 138
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 143
    :cond_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->invoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 123
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->overlayStatusChanged(I)V

    return v1

    .line 115
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->overlayScrollEnd(F)V

    return v1

    .line 107
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->overlayScrollChanged(F)V

    return v1

    .line 99
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->overlayScrollStart(F)V

    return v1

    .line 74
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 86
    :cond_1
    invoke-virtual {p0, p1, p4, v0}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 89
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 93
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 69
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
