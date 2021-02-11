.class Lcom/market/sdk/RemoteMethodInvoker$2;
.super Ljava/lang/Object;
.source "RemoteMethodInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/RemoteMethodInvoker;->invokeInNewThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/RemoteMethodInvoker;


# direct methods
.method constructor <init>(Lcom/market/sdk/RemoteMethodInvoker;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/market/sdk/RemoteMethodInvoker$2;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v3, "com.xiaomi.market.data.MarketService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/market/sdk/RemoteMethodInvoker$2;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/market/sdk/RemoteMethodInvoker;->access$100(Lcom/market/sdk/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/RemoteMethodInvoker$2;->this$0:Lcom/market/sdk/RemoteMethodInvoker;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
