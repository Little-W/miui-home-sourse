.class final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$1;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$setWallpaperZoomOut(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;F)V

    const/4 v0, 0x1

    .line 55
    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v3}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMFolmeTarget$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    .line 56
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 57
    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMZoomInAnimConfig$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v2, v0, [Lmiuix/animation/listener/TransitionListener;

    iget-object v3, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v3}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMZoomListener$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;

    move-result-object v3

    check-cast v3, Lmiuix/animation/listener/TransitionListener;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 58
    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMZoomOutAnimConfig$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    iget-object v2, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v2}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMZoomListener$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$mZoomListener$1;

    move-result-object v2

    check-cast v2, Lmiuix/animation/listener/TransitionListener;

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-void
.end method
