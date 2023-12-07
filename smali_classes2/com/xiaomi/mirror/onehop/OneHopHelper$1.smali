.class Lcom/xiaomi/mirror/onehop/OneHopHelper$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/onehop/OneHopHelper;->registerOneHopShareReceiver(Landroid/content/Context;Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/onehop/OneHopHelper$1$_lancet;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

.field public final synthetic val$oneHopShareCallback:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/onehop/OneHopHelper;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    iput-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->val$oneHopShareCallback:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/mirror/onehop/OneHopHelper$1;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.onehop.action.MIRROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    const-string v1, "_device_type"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "_bt_mac"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "_ability_lyra"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelfIsSupportLyra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    invoke-static {v4}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$200(Lcom/xiaomi/mirror/onehop/OneHopHelper;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", abilityLyra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OneHopHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    invoke-static {v3}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$200(Lcom/xiaomi/mirror/onehop/OneHopHelper;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    const-string v2, "com.miui.mishare.connectivity"

    const-string v3, "com.miui.mishare.connectivity.nfc"

    invoke-static {p2, p1, v2, v3}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$300(Lcom/xiaomi/mirror/onehop/OneHopHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "mishare version not support one hop share"

    :goto_0
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v2, v5

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    const-string v3, "com.xiaomi.mirror"

    const-string v6, "com.xiaomi.mirror.nfc"

    invoke-static {p2, p1, v3, v6}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$300(Lcom/xiaomi/mirror/onehop/OneHopHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "miui plus version not support one hop share"

    goto :goto_0

    :cond_3
    :goto_2
    if-ltz v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->val$oneHopShareCallback:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->val$oneHopShareCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;->onOneHopShare(ILjava/lang/String;I)Z

    move-result p1

    if-ne p1, v5, :cond_5

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "OneHop receive, params is illegal: deviceType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " btMac:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/mirror/onehop/OneHopHelper$1$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/mirror/onehop/OneHopHelper$1;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
