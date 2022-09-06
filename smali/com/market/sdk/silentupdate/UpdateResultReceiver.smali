.class public Lcom/market/sdk/silentupdate/UpdateResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;,
        Lcom/market/sdk/silentupdate/UpdateResultReceiver$_lancet;
    }
.end annotation


# static fields
.field private static final sReceiver:Lcom/market/sdk/silentupdate/UpdateResultReceiver;


# instance fields
.field private volatile callback:Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;

.field private volatile registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/market/sdk/silentupdate/UpdateResultReceiver;

    invoke-direct {v0}, Lcom/market/sdk/silentupdate/UpdateResultReceiver;-><init>()V

    sput-object v0, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->sReceiver:Lcom/market/sdk/silentupdate/UpdateResultReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/silentupdate/UpdateResultReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static get()Lcom/market/sdk/silentupdate/UpdateResultReceiver;
    .locals 1

    .line 24
    sget-object v0, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->sReceiver:Lcom/market/sdk/silentupdate/UpdateResultReceiver;

    return-object v0
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "packageName"

    .line 45
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->callback:Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->callback:Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;->onResult(Landroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/market/sdk/silentupdate/UpdateResultReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/market/sdk/silentupdate/UpdateResultReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public register(Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;)V
    .locals 2

    .line 28
    iput-object p1, p0, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->callback:Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;

    .line 29
    iget-boolean p1, p0, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->registered:Z

    if-eqz p1, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.market.DOWNLOAD_INSTALL_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->registered:Z

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->callback:Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;

    .line 39
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->registered:Z

    return-void
.end method
