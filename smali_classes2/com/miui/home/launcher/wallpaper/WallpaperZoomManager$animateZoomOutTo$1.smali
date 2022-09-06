.class final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateZoomOutTo$1;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->animateZoomOutTo(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $zoomOut:F

.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateZoomOutTo$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    iput p2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateZoomOutTo$1;->$zoomOut:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateZoomOutTo$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMSpringAnimation$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$animateZoomOutTo$1;->$zoomOut:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method
