.class final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationUpdateListener$1;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V
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

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationUpdateListener$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;>;FF)V"
        }
    .end annotation

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationUpdateListener$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {p1, p3}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$setMCurrentVelocity$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V

    .line 57
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationUpdateListener$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {p0, p2}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$setWallpaperZoomOut(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V

    return-void
.end method
