.class final Lcom/miui/home/launcher/WallpaperUtils$1;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaperWithoutCrop(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$autoChange:Z

.field final synthetic val$src:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$autoChange:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 702
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    .line 703
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 706
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 708
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/lock_wallpaper"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 710
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 711
    iget-object v0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    const-string v1, "/data/system/theme/lock_wallpaper"

    invoke-static {v0, v1}, Lmiui/theme/ThemeFileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 712
    iget-object v0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    invoke-static {v0}, Lmiui/theme/ThemeFileUtils;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    const-string v1, "/data/system/theme/lock_wallpaper"

    invoke-static {v0, v1}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 715
    iget-object v0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    invoke-static {v0}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    :goto_0
    const-string v0, "/data/system/theme/lock_wallpaper"

    .line 718
    invoke-static {v0}, Lcom/miui/home/launcher/common/ThemeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    .line 719
    iget-boolean v0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$autoChange:Z

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->access$000(Z)Z

    return-void
.end method
