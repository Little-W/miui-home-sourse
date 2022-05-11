.class final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationEndListener$1;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


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

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationEndListener$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;>;ZFF)V"
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mOnAnimationEndListener$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$setMCurrentVelocity$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V

    return-void
.end method
