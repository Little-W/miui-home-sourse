.class final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$setWallpaperZoomOut$1;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->setWallpaperZoomOut(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$setWallpaperZoomOut$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 81
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManagerKt;->access$getUPDATE_ZOOM_METHOD$p()Lmiui/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$setWallpaperZoomOut$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v2}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMWallpaperManager$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Landroid/app/WallpaperManager;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$setWallpaperZoomOut$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v5}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMWindowToken$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Landroid/os/IBinder;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$setWallpaperZoomOut$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v5}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMZoomOut$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
