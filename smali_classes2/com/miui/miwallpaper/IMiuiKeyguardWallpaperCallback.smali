.class public interface abstract Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;
.super Ljava/lang/Object;
.source "IMiuiKeyguardWallpaperCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRemoteViewChange(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
