.class Lcom/miui/home/launcher/Launcher$48$1$1;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$48$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/home/launcher/Launcher$48$1;

.field final synthetic val$wallpaperInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$48$1;Ljava/lang/String;)V
    .locals 0

    .line 4489
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$48$1$1;->this$2:Lcom/miui/home/launcher/Launcher$48$1;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$48$1$1;->val$wallpaperInfo:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 2

    .line 4492
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1$1;->this$2:Lcom/miui/home/launcher/Launcher$48$1;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "apply"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 4494
    aget-object p0, p1, v0

    invoke-static {p0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaper(Landroid/net/Uri;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 4496
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4489
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$48$1$1;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 4502
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4503
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

    .line 4505
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1$1;->this$2:Lcom/miui/home/launcher/Launcher$48$1;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1$1;->val$wallpaperInfo:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/miui/launcher/utils/PortableUtils;->updateCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4508
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.keyguard.setwallpaper"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "set_lock_wallpaper_result"

    .line 4509
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4510
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1$1;->this$2:Lcom/miui/home/launcher/Launcher$48$1;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 4489
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$48$1$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
