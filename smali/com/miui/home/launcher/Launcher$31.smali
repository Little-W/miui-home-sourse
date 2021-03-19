.class Lcom/miui/home/launcher/Launcher$31;
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

    .line 3426
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$31;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string p1, "content://com.miui.home.launcher.settings/preference"

    .line 3431
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$31;->this$0:Lcom/miui/home/launcher/Launcher;

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/PortableUtils;->updateCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$31;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3434
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$31;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$4200(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.miui.home.none_provider"

    .line 3435
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3436
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3437
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$31;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->backupLockScreenSrc(Landroid/content/Context;)V

    .line 3439
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$31;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$4300(Lcom/miui/home/launcher/Launcher;Z)V

    :cond_2
    :goto_0
    return-void
.end method
