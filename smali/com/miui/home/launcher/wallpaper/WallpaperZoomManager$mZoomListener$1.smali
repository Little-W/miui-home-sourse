.class public final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "WallpaperZoomManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lmiuix/animation/property/FloatProperty<",
            "*>;FFZ)V"
        }
    .end annotation

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {p1, p3}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$setWallpaperZoomOut(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V

    return-void
.end method
