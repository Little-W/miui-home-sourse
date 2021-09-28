.class Lcom/miui/home/launcher/Launcher$46;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->startLockWallpaperPreviewActivity(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 3924
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Landroid/os/Bundle;
    .locals 10

    const/4 v0, 0x0

    .line 3927
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3928
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$5902(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 3929
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/home/launcher/Launcher;->mPreviewComponent:Ljava/lang/String;

    .line 3930
    iput-object v0, p1, Lcom/miui/home/launcher/Launcher;->mDialogComponent:Ljava/lang/String;

    .line 3931
    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.xiaomi.ad.LockScreenAdProvider"

    .line 3933
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v4}, Lcom/miui/home/launcher/WallpaperUtils;->hasValidProvider(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3934
    sget-object p1, Lcom/miui/home/launcher/WallpaperUtils;->sDefaultLockWallpaperProvider:Ljava/lang/String;

    .line 3937
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/launcher/utils/ContentProviderUtils;->isProviderExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3938
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v2}, Lcom/miui/home/launcher/Launcher;->access$6000(Lcom/miui/home/launcher/Launcher;J)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v4, "content://com.miui.home.launcher.settings/preference"

    .line 3942
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, v4}, Lcom/miui/launcher/utils/PortableUtils;->getCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3946
    :try_start_0
    new-instance v5, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;

    invoke-direct {v5}, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;-><init>()V

    const/4 v6, 0x2

    .line 3947
    iput v6, v5, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->mode:I

    .line 3948
    invoke-static {v4}, Lcom/miui/home/launcher/common/JsonUtils;->getWallpaperInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    move-result-object v6

    iput-object v6, v5, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->currentWallpaperInfo:Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    .line 3949
    invoke-static {v5}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonStringFromRequestInfo(Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;)Ljava/lang/String;

    move-result-object v6

    .line 3950
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, v6}, Lcom/miui/home/launcher/Launcher;->access$6100(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3952
    invoke-static {p1}, Lcom/miui/home/launcher/common/JsonUtils;->getResultInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3954
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v7, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->previewComponent:Ljava/lang/String;

    iput-object v7, v6, Lcom/miui/home/launcher/Launcher;->mPreviewComponent:Ljava/lang/String;

    .line 3955
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v7, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->dialogComponent:Ljava/lang/String;

    iput-object v7, v6, Lcom/miui/home/launcher/Launcher;->mDialogComponent:Ljava/lang/String;

    .line 3956
    iget-object v6, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->wallpaperInfos:Ljava/util/List;

    invoke-static {v6}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonArrayFromWallpaperInfos(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3958
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_2
    move-object v6, v0

    .line 3961
    :goto_0
    :try_start_1
    iget-object p1, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->wallpaperInfos:Ljava/util/List;

    iput-object p1, v5, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->wallpaperInfos:Ljava/util/List;

    .line 3962
    invoke-static {v5}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonStringFromRequestInfo(Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;)Ljava/lang/String;

    move-result-object p1

    .line 3963
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v7, 0x3e8

    invoke-static {v5, v3, p1, v7, v8}, Lcom/miui/home/launcher/Launcher;->access$6200(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 3964
    invoke-static {p1}, Lcom/miui/home/launcher/common/JsonUtils;->getResultInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3966
    iget-object p1, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->wallpaperInfos:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonArrayFromWallpaperInfos(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3968
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    move-object v6, v0

    :cond_4
    :goto_1
    move-object v5, v0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v6, v0

    .line 3973
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v0

    .line 3975
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object p1, v0, Lcom/miui/home/launcher/Launcher;->mDialogComponent:Ljava/lang/String;

    move-object v3, v4

    move-object v4, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/Launcher;->access$6300(Lcom/miui/home/launcher/Launcher;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3924
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$46;->doInBackground([Ljava/lang/Long;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 3

    .line 3980
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$5902(Lcom/miui/home/launcher/Launcher;Z)Z

    if-nez p1, :cond_0

    .line 3982
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$6400(Lcom/miui/home/launcher/Launcher;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3986
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher;->mPreviewComponent:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3987
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mPreviewComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 3990
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$6400(Lcom/miui/home/launcher/Launcher;)V

    return-void

    .line 3993
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3994
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 3995
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3996
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3997
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, v1, v1, v0}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 3999
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$46;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher"

    const-string v1, "start activity failed."

    .line 4001
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3924
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$46;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
