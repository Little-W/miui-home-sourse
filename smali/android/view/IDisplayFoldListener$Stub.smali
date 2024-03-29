.class public abstract Landroid/view/IDisplayFoldListener$Stub;
.super Landroid/os/Binder;
.source "IDisplayFoldListener.java"

# interfaces
.implements Landroid/view/IDisplayFoldListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayFoldListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayFoldListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayFoldListener"

.field static final TRANSACTION_onDisplayFoldChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IDisplayFoldListener"

    .line 29
    invoke-virtual {p0, p0, v0}, Landroid/view/IDisplayFoldListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.view.IDisplayFoldListener"

    .line 40
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    instance-of v1, v0, Landroid/view/IDisplayFoldListener;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Landroid/view/IDisplayFoldListener;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Landroid/view/IDisplayFoldListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IDisplayFoldListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/view/IDisplayFoldListener;
    .locals 1

    .line 126
    sget-object v0, Landroid/view/IDisplayFoldListener$Stub$Proxy;->sDefaultImpl:Landroid/view/IDisplayFoldListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/view/IDisplayFoldListener;)Z
    .locals 1

    .line 116
    sget-object v0, Landroid/view/IDisplayFoldListener$Stub$Proxy;->sDefaultImpl:Landroid/view/IDisplayFoldListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 120
    sput-object p0, Landroid/view/IDisplayFoldListener$Stub$Proxy;->sDefaultImpl:Landroid/view/IDisplayFoldListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 117
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

    const/4 v0, 0x1

    const-string v1, "android.view.IDisplayFoldListener"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 57
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 62
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 67
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/IDisplayFoldListener$Stub;->onDisplayFoldChanged(IZ)V

    return v0
.end method
