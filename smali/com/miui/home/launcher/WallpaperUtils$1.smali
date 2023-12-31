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

    .line 804
    iput-object p1, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$autoChange:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 806
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    .line 807
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 810
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 812
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/lock_wallpaper"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    .line 815
    iget-object v0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/theme/ThemeFileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 816
    iget-object v0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$src:Ljava/lang/String;

    invoke-static {v0}, Lmiui/theme/ThemeFileUtils;->remove(Ljava/lang/String;)Z

    .line 819
    :cond_1
    invoke-static {v1}, Lcom/miui/home/launcher/common/ThemeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    .line 820
    iget-boolean p0, p0, Lcom/miui/home/launcher/WallpaperUtils$1;->val$autoChange:Z

    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->access$000(Z)Z

    return-void
.end method
