.class Lcom/miui/home/launcher/Launcher$21;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 3376
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 3379
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3380
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    return-void
.end method
