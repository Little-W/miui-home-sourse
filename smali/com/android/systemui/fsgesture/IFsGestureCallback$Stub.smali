.class public abstract Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;
.super Landroid/os/Binder;
.source "IFsGestureCallback.java"

# interfaces
.implements Lcom/android/systemui/fsgesture/IFsGestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/IFsGestureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 101
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->notifyHomeModeFsGestureStart()V

    return v2

    .line 95
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->notifyMiuiAnimationEnd()V

    return v2

    .line 89
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->notifyMiuiAnimationStart()V

    return v2

    .line 71
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p1, p3, v2}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 51
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v1

    :goto_1
    move-object v3, p0

    .line 66
    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->changeAlphaScale(FFIIIIZ)V

    return v2

    .line 46
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
