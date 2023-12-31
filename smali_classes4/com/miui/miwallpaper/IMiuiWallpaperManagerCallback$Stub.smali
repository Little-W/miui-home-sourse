.class public abstract Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IMiuiWallpaperManagerCallback.java"

# interfaces
.implements Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.miwallpaper.IMiuiWallpaperManagerCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.miwallpaper.IMiuiWallpaperManagerCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    const-string v1, "com.miui.miwallpaper.IMiuiWallpaperManagerCallback"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 65
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

    if-eqz p1, :cond_2

    .line 51
    sget-object p1, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperColors;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 57
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 60
    invoke-virtual {p0, p1, p3, p2}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;->onWallpaperChanged(Landroid/app/WallpaperColors;Ljava/lang/String;I)V

    return v0
.end method
