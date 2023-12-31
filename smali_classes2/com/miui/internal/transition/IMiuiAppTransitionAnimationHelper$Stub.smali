.class public abstract Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;
.super Landroid/os/Binder;
.source "IMiuiAppTransitionAnimationHelper.java"

# interfaces
.implements Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    .line 32
    invoke-virtual {p0, p0, v0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
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

    const-string v1, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 60
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 89
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->notifyMiuiAnimationEnd()V

    return v0

    .line 83
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->notifyMiuiAnimationStart()V

    return v0

    .line 65
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object p0

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {p0, p3, v0}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 77
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0
.end method
