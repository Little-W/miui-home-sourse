.class Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/RelayIconHelper;->registerCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/RelayIconCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Z

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$200()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInt(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconShow()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconHide()V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;)V

    return-void
.end method
