.class Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$3;
.super Landroid/database/ContentObserver;
.source "DesktopWallpaperManager.java"


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
.method constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/os/Handler;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$3;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$3;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$600(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/content/Context;)V

    return-void
.end method
