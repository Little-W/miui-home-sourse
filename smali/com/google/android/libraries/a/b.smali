.class public abstract Lcom/google/android/libraries/a/b;
.super Lcom/google/android/a/b;
.source "ILauncherOverlay.java"

# interfaces
.implements Lcom/google/android/libraries/a/c;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/libraries/a/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/libraries/a/c;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/libraries/a/c;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/libraries/a/a;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/libraries/a/a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
