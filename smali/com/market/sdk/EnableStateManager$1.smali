.class Lcom/market/sdk/EnableStateManager$1;
.super Ljava/lang/Thread;
.source "EnableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/EnableStateManager;->registerReceiverIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/EnableStateManager;


# direct methods
.method constructor <init>(Lcom/market/sdk/EnableStateManager;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/market/sdk/EnableStateManager$1;->this$0:Lcom/market/sdk/EnableStateManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.market.sdk.EnableUpdateReceiver"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/market/sdk/MarketManager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;

    iget-object v3, p0, Lcom/market/sdk/EnableStateManager$1;->this$0:Lcom/market/sdk/EnableStateManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;-><init>(Lcom/market/sdk/EnableStateManager;Lcom/market/sdk/EnableStateManager$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    iget-object p0, p0, Lcom/market/sdk/EnableStateManager$1;->this$0:Lcom/market/sdk/EnableStateManager;

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x337f9800

    add-long/2addr v0, v2

    .line 112
    invoke-static {p0, v0, v1}, Lcom/market/sdk/EnableStateManager;->access$100(Lcom/market/sdk/EnableStateManager;J)V

    return-void
.end method
