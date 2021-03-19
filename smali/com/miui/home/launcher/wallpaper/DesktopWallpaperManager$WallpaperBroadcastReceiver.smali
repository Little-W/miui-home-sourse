.class Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperBroadcastReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Launcher_DesktopWallpaperManager"

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.WALLPAPER_CHANGED"

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "miui.gallery.action.WALLPAPER_CHANGED"

    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.UPDATE_DESKTOP_VIDEO_WALLPAPER"

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$WallpaperBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
