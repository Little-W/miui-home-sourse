.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->openRemoteDeviceMirror(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

.field public final synthetic val$callback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;

.field public final synthetic val$cr:Landroid/content/ContentResolver;

.field public final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Landroid/content/ContentResolver;Landroid/os/Bundle;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;->val$extras:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;->val$callback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;->val$cr:Landroid/content/ContentResolver;

    const-string v2, "openRemoteDeviceMirror"

    iget-object v3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;->val$extras:Landroid/os/Bundle;

    invoke-static {v1, v2, v0, v3}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;->val$callback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$10;->val$callback:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;->onSuccess()V

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$RelayAppCallback;->onFailure(I)V

    :cond_2
    :goto_1
    return-void
.end method
