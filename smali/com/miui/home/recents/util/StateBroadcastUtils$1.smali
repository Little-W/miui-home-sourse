.class final Lcom/miui/home/recents/util/StateBroadcastUtils$1;
.super Ljava/lang/Object;
.source "StateBroadcastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/StateBroadcastUtils$1$_lancet;
    }
.end annotation


# instance fields
.field final synthetic val$channel:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$state:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$channel:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.fullscreen_state_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 27
    iget-object v2, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$state:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "channel"

    .line 28
    iget-object v2, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$channel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    iget-object v1, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "StateBroadcastUtils"

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFsStateBroadCast state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/util/StateBroadcastUtils$1;->val$channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/util/StateBroadcastUtils$1$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
