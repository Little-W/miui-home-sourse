.class public Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;
.super Ljava/lang/Object;
.source "UserUnlockController.java"


# instance fields
.field private mUserHandleUserUnlockTaskHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

.field private mUserUnlockBroadcastReceiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserHandleUserUnlockTaskHashMap:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserUnlockBroadcastReceiverList:Ljava/util/List;

    .line 30
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;)Lcom/miui/home/library/compat/UserManagerCompat;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;Landroid/os/UserHandle;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->onUserUnlock(Landroid/os/UserHandle;)V

    return-void
.end method

.method private getUserUnlockBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 34
    new-instance v0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController$1;-><init>(Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;)V

    return-object v0
.end method

.method private onUserUnlock(Landroid/os/UserHandle;)V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserHandleUserUnlockTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "UserUnlockController"

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") unlock, run its waiting task(size="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;

    .line 72
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;->run()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private waitForUserUnlockAndRunAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/os/UserHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/Consumer<",
            "TR;>;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 87
    invoke-static {p3}, Lcom/miui/home/launcher/common/Utilities;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;->run()V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserHandleUserUnlockTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object p2, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserHandleUserUnlockTaskHashMap:Ljava/util/HashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 10

    .line 47
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 48
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/UserHandle;

    .line 51
    invoke-static {v8}, Lcom/miui/home/launcher/common/Utilities;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->getUserUnlockBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v9

    move-object v2, v8

    move-object v3, v6

    .line 53
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/LauncherUtils;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserUnlockBroadcastReceiverList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "UserUnlockController"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register USER_UNLOCK broadcastReceiver for user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterBroadcastReceiver(Landroid/content/Context;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserUnlockBroadcastReceiverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_0
    const-string p1, "UserUnlockController"

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister USER_UNLOCK broadcastReceiver, size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->mUserUnlockBroadcastReceiverList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public waitForUserUnlockAndRunOnNonUiThread(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->waitForUserUnlockAndRunAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/os/UserHandle;)V

    return-void
.end method
