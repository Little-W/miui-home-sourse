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

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    .line 15
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

    const-string v0, "com.miui.internal.transition.IMiuiAppTransitionAnimationHelper"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 72
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->notifyMiuiAnimationEnd()V

    return v2

    .line 66
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->notifyMiuiAnimationStart()V

    return v2

    .line 48
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper$Stub;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p1, p3, v2}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 43
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
