.class Lcom/miui/home/recents/util/StateBroadcastUtils$1;
.super Ljava/lang/Object;
.source "StateBroadcastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$channel:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$state:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$channel:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.fullscreen_state_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$state:Ljava/lang/String;

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$channel:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$packageName:Ljava/lang/String;

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getAllUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendFsStateBroadCast state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StateBroadcastUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
