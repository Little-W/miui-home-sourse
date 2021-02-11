.class Lcom/miui/home/recents/BaseRecentsImpl$9;
.super Landroid/content/BroadcastReceiver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/BaseRecentsImpl$9$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/BaseRecentsImpl$9;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$9;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 451
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 452
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$900(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    .line 455
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 456
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 458
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$402(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z

    .line 459
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 461
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$600(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 463
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "RecentsImpl"

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navstubview will be added: mReceiver Intent.ACTION_USER_SWITCHED userid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$9$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1000(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 467
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1100(Lcom/miui/home/recents/BaseRecentsImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 469
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 473
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$402(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z

    .line 475
    :try_start_1
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "RecentsImpl"

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navstubview will be removed: mReceiver Intent.ACTION_USER_SWITCHED userid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$9$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1200(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p2}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 478
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->access$302(Lcom/miui/home/recents/BaseRecentsImpl;Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView;

    .line 480
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1300(Lcom/miui/home/recents/BaseRecentsImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 482
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string p1, "android.intent.action.USER_PRESENT"

    .line 485
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 486
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-virtual {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$9$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/recents/BaseRecentsImpl$9;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
