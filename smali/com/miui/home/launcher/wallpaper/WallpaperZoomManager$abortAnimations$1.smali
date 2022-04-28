.class final Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$abortAnimations$1;
.super Ljava/lang/Object;
.source "WallpaperZoomManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->abortAnimations()V
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

    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$abortAnimations$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x1

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager$abortAnimations$1;->this$0:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    invoke-static {v1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->access$getMFolmeTarget$p(Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->cancel()V

    return-void
.end method
