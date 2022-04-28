.class Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;
.super Ljava/lang/Object;
.source "DesktopWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->getInstance()Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$200(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getWallpaperColors(I)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->update(Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;)V

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$200(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getDesktopWallpaperInfo()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->getColorMode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 58
    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->getStatusBarColorMode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentStatusBarAreaColorMode(I)V

    .line 59
    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->getSearchBarColorMode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentSearchBarAreaColorMode(I)V

    .line 60
    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->isScrollable()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->setIsCurrentWallpaperScrollable(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$run$1(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;Ljava/lang/Void;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$100(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    new-instance v0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$1$vBp8QSYt9evNAhcm28VQ7uSb1bc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$1$vBp8QSYt9evNAhcm28VQ7uSb1bc;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;)V

    new-instance v1, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$1$walLfXnXFhmqKd9IAn6FozABZD4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$1$walLfXnXFhmqKd9IAn6FozABZD4;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
