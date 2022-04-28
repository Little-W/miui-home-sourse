.class final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->animateWallpaperZoom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $zoomIn:Z

.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    iput-boolean p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;->$zoomIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->access$getZOOM_ENABLED$p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMZoomedIn$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;->$zoomIn:Z

    if-eq v0, v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    if-eqz v1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-boolean v2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;->$zoomIn:Z

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$animateZoomOutTo(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;FZ)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    iget-boolean v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateWallpaperZoom$1;->$zoomIn:Z

    invoke-static {v0, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$setMZoomedIn$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;Z)V

    return-void
.end method
