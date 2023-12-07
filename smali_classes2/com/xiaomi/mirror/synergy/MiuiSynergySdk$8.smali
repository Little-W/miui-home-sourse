.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->startRemoteMainMirrorDisplay(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

.field public final synthetic val$cr:Landroid/content/ContentResolver;

.field public final synthetic val$deviceId:Ljava/lang/String;

.field public final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;->val$extras:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;->val$cr:Landroid/content/ContentResolver;

    const-string v2, "startRemoteMainMirrorDisplay"

    iget-object v3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;->val$extras:Landroid/os/Bundle;

    invoke-static {v1, v2, v0, v3}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$500(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;->val$deviceId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;->onSuccess()V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;->onFailure(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$500(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$8;->val$deviceId:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
