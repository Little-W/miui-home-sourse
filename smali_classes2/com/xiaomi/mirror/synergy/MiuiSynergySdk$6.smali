.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->sendAppToRemoteDevice(Landroid/content/Context;Ljava/lang/String;ILcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

.field final synthetic val$callback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;->val$extras:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;->val$callback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;->val$cr:Landroid/content/ContentResolver;

    const-string v1, "sendAppToRemoteDevice"

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;->val$extras:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;->val$callback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v1, "sendAppResult"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;->val$callback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;

    invoke-interface {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;->onSuccess()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$6;->val$callback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;

    invoke-interface {v1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;->onFailure(I)V

    return-void

    :cond_1
    invoke-interface {v1, v2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;->onFailure(I)V

    :cond_2
    return-void
.end method
