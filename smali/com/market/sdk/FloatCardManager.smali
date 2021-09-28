.class public Lcom/market/sdk/FloatCardManager;
.super Ljava/lang/Object;
.source "FloatCardManager.java"


# static fields
.field private static final OVERLAY_POSITION:Ljava/lang/String; = "&overlayPosition="

.field private static volatile sInstance:Lcom/market/sdk/FloatCardManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/FloatCardManager;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/market/sdk/FloatCardManager;->getStringFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/app/Application;)Lcom/market/sdk/FloatCardManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/market/sdk/FloatCardManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/market/sdk/FloatCardManager;

    invoke-direct {v1}, Lcom/market/sdk/FloatCardManager;-><init>()V

    sput-object v1, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    .line 33
    new-instance v1, Lcom/market/sdk/AppActivityLifecycleTracker;

    invoke-direct {v1}, Lcom/market/sdk/AppActivityLifecycleTracker;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    return-object p0
.end method

.method private getStringFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public downloadByFloat(Ljava/lang/String;)Z
    .locals 3

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    .line 87
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->downloadByUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "MarketManager"

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public downloadByFloat(Ljava/lang/String;I)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    move p2, v0

    .line 70
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&overlayPosition="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p2

    .line 73
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaomi/market/IAppDownloadManager;->downloadByUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    const-string p2, "MarketManager"

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public downloadOnly(Ljava/lang/String;)Z
    .locals 3

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 53
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    .line 54
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->downloadByUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "MarketManager"

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public lifecycleChanged(Landroid/app/Activity;I)Z
    .locals 2

    .line 216
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/market/IAppDownloadManager;->lifecycleChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "MarketManager"

    .line 220
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public pauseByFloat(Ljava/lang/String;)Z
    .locals 4

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->pauseByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 138
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/market/sdk/FloatCardManager$2;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "MarketManager"

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method public pauseByFloat(Ljava/lang/String;I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    move p2, v0

    .line 103
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&overlayPosition="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p2

    .line 107
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaomi/market/IAppDownloadManager;->pauseByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 110
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/market/sdk/FloatCardManager$1;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception p1

    const-string p2, "MarketManager"

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public resumeByFloat(Ljava/lang/String;)Z
    .locals 4

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->resumeByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 197
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/market/sdk/FloatCardManager$4;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 205
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "MarketManager"

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method public resumeByFloat(Ljava/lang/String;I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    move p2, v0

    .line 163
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&overlayPosition="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p2

    .line 167
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaomi/market/IAppDownloadManager;->resumeByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 170
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/market/sdk/FloatCardManager$3;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 178
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception p1

    const-string p2, "MarketManager"

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setUseGetApps(Z)V
    .locals 1

    .line 41
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "com.xiaomi.mipicks"

    .line 42
    iput-object p1, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "MarketManager"

    const-string/jumbo v0, "you can only set target market package name in international build!"

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
