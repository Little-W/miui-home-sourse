.class Lcom/miui/home/launcher/Launcher$44;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->autoChangeLockWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$forceRefresh:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 3839
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/launcher/Launcher$44;->val$forceRefresh:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9

    .line 3842
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$6402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 3843
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.xiaomi.ad.LockScreenAdProvider"

    .line 3845
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    const-string v2, "com.miui.home.none_provider"

    .line 3846
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 3848
    :cond_0
    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher$44;->val$forceRefresh:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/miui/home/launcher/WallpaperUtils;->DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3850
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/WallpaperUtils;->getLastRequestLockWallpaperTime(Landroid/content/Context;)J

    move-result-wide v6

    .line 3851
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperUpdateMinute(Landroid/content/Context;)I

    move-result v2

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    sub-long/2addr v4, v6

    const v6, 0xea60

    mul-int/2addr v2, v6

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 3853
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3856
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/miui/home/launcher/WallpaperUtils;->setLastRequestLockWallpaperTime(Landroid/content/Context;J)Z

    .line 3857
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/miui/launcher/utils/ContentProviderUtils;->isProviderExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3858
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3860
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-boolean v4, p0, Lcom/miui/home/launcher/Launcher$44;->val$forceRefresh:Z

    invoke-static {v2, v1, v4, p1, v3}, Lcom/miui/home/launcher/Launcher;->access$6500(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3861
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher$44;->val$forceRefresh:Z

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$6600(Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    invoke-static {v0, p1, v1, p1, v2}, Lcom/miui/home/launcher/Launcher;->access$6500(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result p1

    .line 3862
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v3}, Lcom/miui/home/launcher/Launcher;->access$6602(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 3863
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3865
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$6602(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 3866
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lcom/miui/home/launcher/WallpaperUtils;->setLastRequestLockWallpaperTime(Landroid/content/Context;J)Z

    .line 3867
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3846
    :cond_4
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3839
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$44;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 3873
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$6402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 3874
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3875
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "set_lock_wallpaper_result"

    .line 3876
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3877
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3879
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$44;->this$0:Lcom/miui/home/launcher/Launcher;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/ThemeUtils;->tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3839
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$44;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
