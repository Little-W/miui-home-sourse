.class Lcom/miui/home/launcher/Launcher$48$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$48;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$48;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tmpIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$48;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 4445
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$Launcher$48$1(Landroid/content/Intent;)V
    .locals 0

    .line 4536
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->access$5700(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 4448
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4449
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$4300(Lcom/miui/home/launcher/Launcher;Z)V

    .line 4450
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$4800(Lcom/miui/home/launcher/Launcher;)V

    .line 4451
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onUserPresent()V

    .line 4452
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4453
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 4454
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4455
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    goto/16 :goto_1

    .line 4457
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 4458
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$4900(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5000(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4459
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 4461
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4462
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 4464
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onScreenOffFromReceiver()V

    .line 4465
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/folder/AppPredictHelper;->getAppPredictFromService(Z)V

    goto/16 :goto_1

    .line 4466
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SYSTEM_UI_VISIBILITY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4467
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isResumed(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4468
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v0, "is_show"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 4469
    invoke-static {v2}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    goto/16 :goto_1

    .line 4471
    :cond_5
    invoke-static {v1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    goto/16 :goto_1

    .line 4474
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.miui.REQUEST_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4475
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 4476
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v3, v3, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3, v0}, Lcom/miui/home/launcher/common/Utilities;->isSameSignatureWhitHome(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4479
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    const-string/jumbo v3, "wallpaperInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 4482
    invoke-static {v0}, Lcom/miui/home/launcher/common/JsonUtils;->getWallpaperInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 4484
    iget-object v3, v3, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;->wallpaperUri:Ljava/lang/String;

    goto :goto_0

    :cond_8
    move-object v3, v4

    .line 4485
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 4486
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_9
    if-eqz v4, :cond_a

    .line 4489
    new-instance v3, Lcom/miui/home/launcher/Launcher$48$1$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/Launcher$48$1$1;-><init>(Lcom/miui/home/launcher/Launcher$48$1;Ljava/lang/String;)V

    new-array p0, v2, [Landroid/net/Uri;

    aput-object v4, p0, v1

    .line 4513
    invoke-virtual {v3, p0}, Lcom/miui/home/launcher/Launcher$48$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 4515
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "set_lock_wallpaper_result"

    .line 4516
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4517
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 4519
    :cond_b
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v1, "showTime"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4520
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4521
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->access$5200(Lcom/miui/home/launcher/Launcher;J)V

    goto/16 :goto_1

    .line 4523
    :cond_c
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, v2}, Lcom/miui/home/launcher/Launcher;->access$4300(Lcom/miui/home/launcher/Launcher;Z)V

    goto/16 :goto_1

    .line 4525
    :cond_d
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4526
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$5300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel;->forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    goto/16 :goto_1

    .line 4527
    :cond_e
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.xiaomi.mihomemanager.clearMiuiHome"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    .line 4528
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.xiaomi.mihomemanager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4529
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$context:Landroid/content/Context;

    const-string v0, "database_ready_pref_key"

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4530
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_1

    .line 4531
    :cond_f
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4532
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5400(Lcom/miui/home/launcher/Launcher;)V

    .line 4533
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$5500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/Utilities;->registerAppTransitionAnimationHelper(Landroid/content/Context;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    goto :goto_1

    .line 4534
    :cond_10
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.launcher.action.UPDATE_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4535
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$48$1$WHjFT-oy7yd80LXzj4WtAd8AmeQ;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$48$1$WHjFT-oy7yd80LXzj4WtAd8AmeQ;-><init>(Lcom/miui/home/launcher/Launcher$48$1;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 4538
    :cond_11
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4539
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsNetworkConnectedAsync()V

    goto :goto_1

    .line 4540
    :cond_12
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4541
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, v1}, Lcom/miui/home/launcher/Launcher;->access$4700(Lcom/miui/home/launcher/Launcher;Z)V

    goto :goto_1

    .line 4542
    :cond_13
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.ad.PREINSTALL_AD_UPDATING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4543
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->this$1:Lcom/miui/home/launcher/Launcher$48;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$5600(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_1

    .line 4544
    :cond_14
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 4545
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getSecurityHideItemsAsync()V

    :cond_15
    :goto_1
    return-void
.end method
