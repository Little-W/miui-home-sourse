.class Lcom/miui/home/launcher/Launcher$42$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$42;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$42;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tmpIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$42;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 3977
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/miui/home/launcher/Launcher$42$1;Landroid/content/Intent;)V
    .locals 1

    .line 4065
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->access$5600(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 3980
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3981
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$4200(Lcom/miui/home/launcher/Launcher;Z)V

    .line 3982
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$4700(Lcom/miui/home/launcher/Launcher;)V

    .line 3983
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onUserPresent()V

    .line 3984
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3985
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 3986
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3987
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    goto/16 :goto_1

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 3989
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3990
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$4800(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$4900(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3991
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 3993
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3994
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 3996
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onScreenOffFromReceiver()V

    goto/16 :goto_1

    :cond_4
    const-string v0, "android.intent.action.SYSTEM_UI_VISIBILITY_CHANGED"

    .line 3997
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 3998
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isResumed(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3999
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v3, "is_show"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4000
    invoke-static {v2}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    goto/16 :goto_1

    .line 4002
    :cond_5
    invoke-static {v1}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "android.miui.REQUEST_LOCKSCREEN_WALLPAPER"

    .line 4005
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4006
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v3, "wallpaperInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4008
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 4009
    invoke-static {v0}, Lcom/miui/home/launcher/common/JsonUtils;->getWallpaperInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 4011
    iget-object v3, v3, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;->wallpaperUri:Ljava/lang/String;

    goto :goto_0

    :cond_7
    move-object v3, v4

    .line 4012
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 4013
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_8
    if-eqz v4, :cond_9

    .line 4016
    new-instance v3, Lcom/miui/home/launcher/Launcher$42$1$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/Launcher$42$1$1;-><init>(Lcom/miui/home/launcher/Launcher$42$1;Ljava/lang/String;)V

    new-array v0, v2, [Landroid/net/Uri;

    aput-object v4, v0, v1

    .line 4040
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/Launcher$42$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 4042
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "set_lock_wallpaper_result"

    .line 4043
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4044
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 4046
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v1, "showTime"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4047
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    const-string v1, "showTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4048
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/Launcher;->access$5100(Lcom/miui/home/launcher/Launcher;J)V

    goto/16 :goto_1

    .line 4050
    :cond_b
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/Launcher;->access$4200(Lcom/miui/home/launcher/Launcher;Z)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "miui.intent.action.MIUI_REGION_CHANGED"

    .line 4052
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4053
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$5200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherModel;->forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    goto/16 :goto_1

    :cond_d
    const-string v0, "com.xiaomi.mihomemanager.clearMiuiHome"

    .line 4054
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "com.xiaomi.mihomemanager"

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    .line 4055
    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4056
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$context:Landroid/content/Context;

    const-string v2, "database_ready_pref_key"

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4057
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_1

    :cond_e
    const-string v0, "android.intent.action.USER_FOREGROUND"

    .line 4058
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4059
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5300(Lcom/miui/home/launcher/Launcher;)V

    .line 4060
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v1, v1, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$5400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->registerAppTransitionAnimationHelper(Landroid/content/Context;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    goto/16 :goto_1

    :cond_f
    const-string v0, "com.miui.action.appcompatibility.update"

    .line 4061
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4062
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->updatemIncompatibleAppList(Landroid/content/Context;)V

    goto :goto_1

    :cond_10
    const-string v0, "com.android.launcher.action.UPDATE_SHORTCUT"

    .line 4063
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4064
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$42$1$KbN96pgC-68lJvNwudKio3P1Llo;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$42$1$KbN96pgC-68lJvNwudKio3P1Llo;-><init>(Lcom/miui/home/launcher/Launcher$42$1;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_11
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4067
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4068
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsNetworkConnectedAsync()V

    goto :goto_1

    :cond_12
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 4069
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4070
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$4600(Lcom/miui/home/launcher/Launcher;Z)V

    goto :goto_1

    :cond_13
    const-string v0, "miui.intent.action.ad.PREINSTALL_AD_UPDATING"

    .line 4071
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$42$1;->val$tmpIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4072
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$42$1;->this$1:Lcom/miui/home/launcher/Launcher$42;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$42;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$5500(Lcom/miui/home/launcher/Launcher;)V

    :cond_14
    :goto_1
    return-void
.end method
