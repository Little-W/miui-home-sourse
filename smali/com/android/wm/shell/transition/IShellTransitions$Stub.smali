.class public abstract Lcom/android/wm/shell/transition/IShellTransitions$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/wm/shell/transition/IShellTransitions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/IShellTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IShellTransitions;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.wm.shell.transition.IShellTransitions"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/wm/shell/transition/IShellTransitions;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/wm/shell/transition/IShellTransitions;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/transition/IShellTransitions$Stub$Proxy;->sDefaultImpl:Lcom/android/wm/shell/transition/IShellTransitions;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.android.wm.shell.transition.IShellTransitions"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->getShellApplyToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :cond_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/hideapi/RemoteTransitionExpose;->getCreator()Landroid/os/Parcelable$Creator;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/window/RemoteTransition;

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->unregisterRemote(Landroid/window/RemoteTransition;)V

    return v2

    :cond_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/hideapi/TransitionFilterExpose;->getCreator()Landroid/os/Parcelable$Creator;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TransitionFilter;

    goto :goto_0

    :cond_5
    move-object p1, v1

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/android/hideapi/RemoteTransitionExpose;->getCreator()Landroid/os/Parcelable$Creator;

    move-result-object p3

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/window/RemoteTransition;

    :cond_6
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    return v2
.end method
