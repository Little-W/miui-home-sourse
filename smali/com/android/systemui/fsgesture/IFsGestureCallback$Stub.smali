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

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    .line 41
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

    .line 52
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    instance-of v1, v0, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .locals 1

    .line 264
    sget-object v0, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.android.systemui.fsgesture.IFsGestureCallback"

    if-eq p1, v1, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 69
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 124
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->notifyHomeModeFsGestureStart()V

    return v1

    .line 118
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->notifyMiuiAnimationEnd()V

    return v1

    .line 112
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->notifyMiuiAnimationStart()V

    return v1

    .line 94
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object p0

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_5

    .line 102
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {p0, p3, v1}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 106
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 74
    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v9, v1

    goto :goto_1

    :cond_7
    move v9, v0

    :goto_1
    move-object v2, p0

    .line 89
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->changeAlphaScale(FFIIIIZ)V

    return v1
.end method
