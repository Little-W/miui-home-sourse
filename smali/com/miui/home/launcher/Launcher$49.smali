.class Lcom/miui/home/launcher/Launcher$49;
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

    .line 4633
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Landroid/os/Bundle;
    .locals 10

    const/4 v0, 0x0

    .line 4636
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4637
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$5802(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 4638
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/home/launcher/Launcher;->mPreviewComponent:Ljava/lang/String;

    .line 4639
    iput-object v0, p1, Lcom/miui/home/launcher/Launcher;->mDialogComponent:Ljava/lang/String;

    .line 4640
    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.xiaomi.ad.LockScreenAdProvider"

    .line 4642
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v4}, Lcom/miui/home/launcher/WallpaperUtils;->hasValidProvider(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4643
    sget-object p1, Lcom/miui/home/launcher/WallpaperUtils;->sDefaultLockWallpaperProvider:Ljava/lang/String;

    .line 4646
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

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

    .line 4647
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->access$5900(Lcom/miui/home/launcher/Launcher;J)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4649
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/miui/home/launcher/LauncherSettings;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "preference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4651
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, v4}, Lcom/miui/launcher/utils/PortableUtils;->getCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4655
    :try_start_0
    new-instance v5, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;

    invoke-direct {v5}, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;-><init>()V

    const/4 v7, 0x2

    .line 4656
    iput v7, v5, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->mode:I

    .line 4657
    invoke-static {v4}, Lcom/miui/home/launcher/common/JsonUtils;->getWallpaperInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    move-result-object v7

    iput-object v7, v5, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->currentWallpaperInfo:Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    .line 4658
    invoke-static {v5}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonStringFromRequestInfo(Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;)Ljava/lang/String;

    move-result-object v7

    .line 4659
    iget-object v8, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1, v7}, Lcom/miui/home/launcher/Launcher;->access$6000(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4661
    invoke-static {p1}, Lcom/miui/home/launcher/common/JsonUtils;->getResultInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4663
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v8, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->previewComponent:Ljava/lang/String;

    iput-object v8, v7, Lcom/miui/home/launcher/Launcher;->mPreviewComponent:Ljava/lang/String;

    .line 4664
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v8, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->dialogComponent:Ljava/lang/String;

    iput-object v8, v7, Lcom/miui/home/launcher/Launcher;->mDialogComponent:Ljava/lang/String;

    .line 4665
    iget-object v7, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->wallpaperInfos:Ljava/util/List;

    invoke-static {v7}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonArrayFromWallpaperInfos(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4667
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_2
    move-object v7, v0

    .line 4670
    :goto_0
    :try_start_1
    iget-object p1, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->wallpaperInfos:Ljava/util/List;

    iput-object p1, v5, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->wallpaperInfos:Ljava/util/List;

    .line 4671
    invoke-static {v5}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonStringFromRequestInfo(Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;)Ljava/lang/String;

    move-result-object p1

    .line 4672
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v8, 0x3e8

    invoke-static {v5, v3, p1, v8, v9}, Lcom/miui/home/launcher/Launcher;->access$6100(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 4673
    invoke-static {p1}, Lcom/miui/home/launcher/common/JsonUtils;->getResultInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4675
    iget-object p1, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->wallpaperInfos:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonArrayFromWallpaperInfos(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4677
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    move-object v7, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v7, v0

    .line 4682
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    move-object v5, v0

    .line 4684
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v6, v0, Lcom/miui/home/launcher/Launcher;->mDialogComponent:Ljava/lang/String;

    move-object v3, v4

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/Launcher;->access$6200(Lcom/miui/home/launcher/Launcher;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4633
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$49;->doInBackground([Ljava/lang/Long;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 3

    .line 4689
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$5802(Lcom/miui/home/launcher/Launcher;Z)Z

    if-nez p1, :cond_0

    .line 4691
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$6300(Lcom/miui/home/launcher/Launcher;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4695
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher;->mPreviewComponent:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4696
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mPreviewComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 4699
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$6300(Lcom/miui/home/launcher/Launcher;)V

    return-void

    .line 4702
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4703
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 4704
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4705
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4706
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, v1, v1, v0}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 4708
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$49;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher"

    const-string v0, "start activity failed."

    .line 4710
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 4633
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$49;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
