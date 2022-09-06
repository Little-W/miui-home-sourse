.class Lcom/miui/home/launcher/LauncherProvider$1;
.super Ljava/lang/Object;
.source "LauncherProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherProvider;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lockScreenSnapshot:Landroid/graphics/Bitmap;

.field final synthetic val$wallpaperColorMode:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherProvider;Landroid/content/Context;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$1;->this$0:Lcom/miui/home/launcher/LauncherProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherProvider$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/miui/home/launcher/LauncherProvider$1;->val$wallpaperColorMode:I

    iput-object p4, p0, Lcom/miui/home/launcher/LauncherProvider$1;->val$lockScreenSnapshot:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 582
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v5

    .line 583
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherProvider$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/miui/home/launcher/LauncherProvider$1;->val$wallpaperColorMode:I

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherProvider$1;->val$lockScreenSnapshot:Landroid/graphics/Bitmap;

    .line 584
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v3

    const/4 v4, 0x0

    .line 583
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/MamlUtils;->snapshootLockscreen(Landroid/content/Context;ILandroid/graphics/Bitmap;ZII)Landroid/graphics/Bitmap;

    return-void
.end method
