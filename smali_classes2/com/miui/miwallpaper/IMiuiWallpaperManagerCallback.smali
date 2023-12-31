.class public interface abstract Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;
.super Ljava/lang/Object;
.source "IMiuiWallpaperManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onWallpaperChanged(Landroid/app/WallpaperColors;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
