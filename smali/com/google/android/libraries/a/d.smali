.class public abstract Lcom/google/android/libraries/a/d;
.super Lcom/google/android/a/b;
.source "ILauncherOverlayCallback.java"

# interfaces
.implements Lcom/google/android/libraries/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/a/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/a/d;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/a/d;->a(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/a/d;->a(F)V

    :goto_0
    return v0
.end method
