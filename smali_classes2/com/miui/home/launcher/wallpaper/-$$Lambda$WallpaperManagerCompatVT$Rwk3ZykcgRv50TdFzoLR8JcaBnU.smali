.class public final synthetic Lcom/miui/home/launcher/wallpaper/-$$Lambda$WallpaperManagerCompatVT$Rwk3ZykcgRv50TdFzoLR8JcaBnU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerCallback;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;

.field private final synthetic f$1:Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$WallpaperManagerCompatVT$Rwk3ZykcgRv50TdFzoLR8JcaBnU;->f$0:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$WallpaperManagerCompatVT$Rwk3ZykcgRv50TdFzoLR8JcaBnU;->f$1:Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    return-void
.end method


# virtual methods
.method public final onMiuiWallpaperInitialized(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$WallpaperManagerCompatVT$Rwk3ZykcgRv50TdFzoLR8JcaBnU;->f$0:Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$WallpaperManagerCompatVT$Rwk3ZykcgRv50TdFzoLR8JcaBnU;->f$1:Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompatVT;->lambda$initMiuiWallpaperManager$0$WallpaperManagerCompatVT(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    return-void
.end method
