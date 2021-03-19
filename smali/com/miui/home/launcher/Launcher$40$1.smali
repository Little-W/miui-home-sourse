.class Lcom/miui/home/launcher/Launcher$40$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$40;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$40;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tmpIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$40;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 3603
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/miui/home/launcher/Launcher$40$1;Landroid/content/Intent;)V
    .locals 1

    .line 3704
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->access$5700(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "android.provider.Telephony.SECRET_CODE"

    .line 3606
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3607
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "4663"

    .line 3608
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3609
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3610
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    const-class v2, Lcom/miui/home/launcher/DebugActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3611
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3612
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "362253564"

    .line 3613
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3614
    invoke-static {v1}, Lcom/miui/home/launcher/MiuiHomeLog;->setDebugLogState(Z)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "3472253564"

    .line 3615
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3616
    invoke-static {v2}, Lcom/miui/home/launcher/MiuiHomeLog;->setDebugLogState(Z)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "com.android.finger.fast.unlock"

    .line 3618
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3619
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onFingerFastUnlock()V

    goto/16 :goto_1

    :cond_3
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 3620
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3621
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/Launcher;->access$4300(Lcom/miui/home/launcher/Launcher;Z)V

    .line 3622
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$4800(Lcom/miui/home/launcher/Launcher;)V

    .line 3623
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onUserPresent()V

    .line 3624
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3625
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 3626
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3627
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    goto/16 :goto_1

    :cond_5
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 3629
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3630
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$4900(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5000(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3631
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 3633
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3634
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "android.intent.action.SYSTEM_UI_VISIBILITY_CHANGED"

    .line 3636
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3637
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isResumed(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3638
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v3, "is_show"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3639
    invoke-static {v1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    goto/16 :goto_1

    .line 3641
    :cond_8
    invoke-static {v2}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "android.miui.REQUEST_LOCKSCREEN_WALLPAPER"

    .line 3644
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3645
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v3, "wallpaperInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3647
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 3648
    invoke-static {v0}, Lcom/miui/home/launcher/common/JsonUtils;->getWallpaperInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 3650
    iget-object v3, v3, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;->wallpaperUri:Ljava/lang/String;

    goto :goto_0

    :cond_a
    move-object v3, v4

    .line 3651
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 3652
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_b
    if-eqz v4, :cond_c

    .line 3655
    new-instance v3, Lcom/miui/home/launcher/Launcher$40$1$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/Launcher$40$1$1;-><init>(Lcom/miui/home/launcher/Launcher$40$1;Ljava/lang/String;)V

    new-array v0, v1, [Landroid/net/Uri;

    aput-object v4, v0, v2

    .line 3679
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/Launcher$40$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 3681
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "set_lock_wallpaper_result"

    .line 3682
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3683
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3685
    :cond_d
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v2, "showTime"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3686
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v1, "showTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3687
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/Launcher;->access$5200(Lcom/miui/home/launcher/Launcher;J)V

    goto/16 :goto_1

    .line 3689
    :cond_e
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$4300(Lcom/miui/home/launcher/Launcher;Z)V

    goto/16 :goto_1

    :cond_f
    const-string v0, "miui.intent.action.MIUI_REGION_CHANGED"

    .line 3691
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3692
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$5300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel;->forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    goto/16 :goto_1

    :cond_10
    const-string v0, "com.xiaomi.mihomemanager.clearMiuiHome"

    .line 3693
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "com.xiaomi.mihomemanager"

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    .line 3694
    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3695
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$context:Landroid/content/Context;

    const-string v1, "database_ready_pref_key"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3696
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_1

    :cond_11
    const-string v0, "android.intent.action.USER_FOREGROUND"

    .line 3697
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3698
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5400(Lcom/miui/home/launcher/Launcher;)V

    .line 3699
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$5500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->registerAppTransitionAnimationHelper(Landroid/content/Context;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    goto/16 :goto_1

    :cond_12
    const-string v0, "com.miui.action.appcompatibility.update"

    .line 3700
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3701
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->updatemIncompatibleAppList(Landroid/content/Context;)V

    goto :goto_1

    :cond_13
    const-string v0, "com.android.launcher.action.UPDATE_SHORTCUT"

    .line 3702
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3703
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$40$1$GZwnZPHD9KoYrHv3GhKOPP2Kbko;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$40$1$GZwnZPHD9KoYrHv3GhKOPP2Kbko;-><init>(Lcom/miui/home/launcher/Launcher$40$1;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_14
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3706
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3707
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsNetworkConnectedAsync()V

    goto :goto_1

    :cond_15
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 3708
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3709
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/Launcher;->access$4700(Lcom/miui/home/launcher/Launcher;Z)V

    goto :goto_1

    :cond_16
    const-string v0, "miui.intent.action.ad.PREINSTALL_AD_UPDATING"

    .line 3710
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$40$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3711
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$40$1;->this$1:Lcom/miui/home/launcher/Launcher$40;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$40;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5600(Lcom/miui/home/launcher/Launcher;)V

    :cond_17
    :goto_1
    return-void
.end method
