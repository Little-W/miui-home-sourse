.class public Lcom/market/sdk/DetailsPageManager;
.super Ljava/lang/Object;
.source "DetailsPageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/DetailsPageManager$OpenMarketCallback;
    }
.end annotation


# static fields
.field private static final EXTRA_KEY_DATA:Ljava/lang/String; = "data"

.field private static volatile INSTANCE:Lcom/market/sdk/DetailsPageManager; = null

.field private static final TAG:Ljava/lang/String; = "DetailsPageManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/market/sdk/DetailsPageManager;
    .locals 2

    .line 39
    sget-object v0, Lcom/market/sdk/DetailsPageManager;->INSTANCE:Lcom/market/sdk/DetailsPageManager;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/market/sdk/DetailsPageManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/market/sdk/DetailsPageManager;->INSTANCE:Lcom/market/sdk/DetailsPageManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/market/sdk/DetailsPageManager;

    invoke-direct {v1}, Lcom/market/sdk/DetailsPageManager;-><init>()V

    sput-object v1, Lcom/market/sdk/DetailsPageManager;->INSTANCE:Lcom/market/sdk/DetailsPageManager;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/market/sdk/DetailsPageManager;->INSTANCE:Lcom/market/sdk/DetailsPageManager;

    return-object v0
.end method

.method private openMarketIfNotSupport(Lcom/market/sdk/DetailPageRequest;)Z
    .locals 4

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.market"

    const-string v3, "com.xiaomi.market.data.DetailsPageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "DetailsPageManager"

    const-string v1, "com.xiaomi.market.data.DetailsPageService not found, try start activity with deeplink."

    .line 94
    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/market/sdk/DetailPageRequest;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 98
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 100
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method


# virtual methods
.method public openMarket(Lcom/market/sdk/DetailPageRequest;)Z
    .locals 3

    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 54
    sget-object v0, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lcom/market/sdk/DetailsPageManager;->openMarketIfNotSupport(Lcom/market/sdk/DetailPageRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 61
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 62
    invoke-virtual {p1}, Lcom/market/sdk/DetailPageRequest;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-static {}, Lcom/market/sdk/DetailsPageService;->openConnect()Lcom/market/sdk/DetailsPageService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/market/sdk/DetailsPageService;->openDetailsPage(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "DetailsPageManager"

    const-string v2, "open market failed."

    .line 66
    invoke-static {v0, v2, p1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t call this method on ui thread"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openMarketAsync(Lcom/market/sdk/DetailPageRequest;Lcom/market/sdk/DetailsPageManager$OpenMarketCallback;)V
    .locals 2

    .line 72
    sget-object v0, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/market/sdk/DetailsPageManager;->openMarketIfNotSupport(Lcom/market/sdk/DetailPageRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 75
    invoke-interface {p2, p1}, Lcom/market/sdk/DetailsPageManager$OpenMarketCallback;->onMarketOpened(Z)V

    return-void

    .line 78
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 79
    invoke-virtual {p1}, Lcom/market/sdk/DetailPageRequest;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_0
    invoke-static {}, Lcom/market/sdk/DetailsPageService;->openConnect()Lcom/market/sdk/DetailsPageService;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/market/sdk/DetailsPageService;->openDetailPageAsync(Landroid/os/Bundle;Lcom/market/sdk/DetailsPageManager$OpenMarketCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DetailsPageManager"

    const-string v0, "open market failed."

    .line 83
    invoke-static {p2, v0, p1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
