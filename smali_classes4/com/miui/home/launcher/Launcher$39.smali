.class Lcom/miui/home/launcher/Launcher$39;
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

    .line 4218
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$39;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 4221
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$39;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4224
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "preference"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4226
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$39;->this$0:Lcom/miui/home/launcher/Launcher;

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/PortableUtils;->updateCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$39;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4229
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isWallpaperSupportBackup()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4230
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$39;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$4200(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.miui.home.none_provider"

    .line 4232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4233
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isWallpaperSupportBackup()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4234
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$39;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->backupLockScreenSrc(Landroid/content/Context;)V

    .line 4236
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$39;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->access$4300(Lcom/miui/home/launcher/Launcher;Z)V

    :cond_3
    :goto_0
    return-void
.end method
