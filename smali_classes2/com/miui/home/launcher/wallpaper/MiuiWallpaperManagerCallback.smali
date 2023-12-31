.class public Lcom/miui/home/launcher/wallpaper/MiuiWallpaperManagerCallback;
.super Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;
.source "MiuiWallpaperManagerCallback.java"


# instance fields
.field private final wallpaperManagerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/wallpaper/MiuiWallpaperManagerCallback;->wallpaperManagerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onWallpaperChanged(Landroid/app/WallpaperColors;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/MiuiWallpaperManagerCallback;->wallpaperManagerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/MiuiWallpaperManagerCallback;->wallpaperManagerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    :cond_0
    return-void
.end method
