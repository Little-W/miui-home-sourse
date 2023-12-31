.class Lcom/miui/miwallpaper/MiuiWallpaperManager$1;
.super Ljava/lang/Object;
.source "MiuiWallpaperManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miwallpaper/MiuiWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;


# direct methods
.method constructor <init>(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "MiuiWallpaperManager"

    const-string v1, "linkToDeath:MiuiWallpaperManagerService died, try rebind..."

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$1;->this$0:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-static {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->access$000(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    return-void
.end method
