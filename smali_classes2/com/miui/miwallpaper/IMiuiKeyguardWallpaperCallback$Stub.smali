.class public abstract Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback$Stub;
.super Landroid/os/Binder;
.source "IMiuiKeyguardWallpaperCallback.java"

# interfaces
.implements Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.miwallpaper.IMiuiKeyguardWallpaperCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.miui.miwallpaper.IMiuiKeyguardWallpaperCallback"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 43
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 48
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    .line 51
    sget-object p1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    goto :goto_0

    :cond_2
    move-object p1, p4

    .line 57
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    sget-object p4, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Landroid/widget/RemoteViews;

    .line 63
    :cond_3
    invoke-virtual {p0, p1, p4}, Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback$Stub;->onRemoteViewChange(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
