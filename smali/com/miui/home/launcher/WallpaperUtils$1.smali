.class Lcom/miui/home/launcher/WallpaperUtils$1;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$autoChange:Z

.field final synthetic val$src:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$autoChange:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 800
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    .line 801
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 804
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 806
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/lock_wallpaper"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 808
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 809
    iget-object v0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    const-string v1, "/data/system/theme/lock_wallpaper"

    invoke-static {v0, v1}, Lmiui/theme/ThemeFileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 810
    iget-object v0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    invoke-static {v0}, Lmiui/theme/ThemeFileUtils;->remove(Ljava/lang/String;)Z

    :cond_1
    const-string v0, "/data/system/theme/lock_wallpaper"

    .line 813
    invoke-static {v0}, Lcom/miui/home/launcher/common/ThemeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    .line 814
    iget-boolean v0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$autoChange:Z

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->access$000(Z)Z

    return-void
.end method
