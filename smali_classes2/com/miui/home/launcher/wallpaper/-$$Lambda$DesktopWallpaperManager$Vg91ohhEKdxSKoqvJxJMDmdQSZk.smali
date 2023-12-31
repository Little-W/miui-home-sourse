.class public final synthetic Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/graphics/Rect;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;->f$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;->f$2:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;->f$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;->f$1:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/-$$Lambda$DesktopWallpaperManager$Vg91ohhEKdxSKoqvJxJMDmdQSZk;->f$2:Lcom/miui/home/launcher/ItemInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->lambda$updateLauncherComponentColorByWallpaperInner$0$DesktopWallpaperManager(Landroid/graphics/Rect;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
