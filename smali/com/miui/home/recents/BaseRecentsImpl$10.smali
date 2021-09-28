.class Lcom/miui/home/recents/BaseRecentsImpl$10;
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
        Lcom/miui/home/recents/BaseRecentsImpl$10$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/BaseRecentsImpl$10;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$10;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 552
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 553
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1100(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    .line 556
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 557
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 559
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$502(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z

    .line 560
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$100(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 562
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$800(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 564
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$400(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "RecentsImpl"

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navstubview will be added: mReceiver Intent.ACTION_USER_SWITCHED userid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 566
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1200(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 568
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1300(Lcom/miui/home/recents/BaseRecentsImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 570
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 574
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->access$502(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z

    .line 576
    :try_start_1
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1400(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 577
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1500(Lcom/miui/home/recents/BaseRecentsImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 579
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p1, "android.intent.action.USER_PRESENT"

    .line 582
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 583
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$10;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-virtual {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$10$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/recents/BaseRecentsImpl$10;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
