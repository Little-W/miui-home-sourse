.class public Lcom/market/sdk/FloatCardManager;
.super Ljava/lang/Object;
.source "FloatCardManager.java"


# static fields
.field private static final OVERLAY_POSITION:Ljava/lang/String; = "&overlayPosition="

.field private static volatile sInstance:Lcom/market/sdk/FloatCardManager;


# instance fields
.field private targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/FloatCardManager;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/market/sdk/FloatCardManager;->getStringFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/app/Application;)Lcom/market/sdk/FloatCardManager;
    .locals 1

    .line 32
    sget-object p0, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    if-nez p0, :cond_1

    .line 33
    const-class p0, Lcom/market/sdk/FloatCardManager;

    monitor-enter p0

    .line 34
    :try_start_0
    sget-object v0, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/market/sdk/FloatCardManager;

    invoke-direct {v0}, Lcom/market/sdk/FloatCardManager;-><init>()V

    sput-object v0, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    .line 37
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/market/sdk/FloatCardManager;->sInstance:Lcom/market/sdk/FloatCardManager;

    return-object p0
.end method

.method private getStringFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public downloadByFloat(Ljava/lang/String;)Z
    .locals 2

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p0

    .line 89
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->downloadByUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public downloadByFloat(Ljava/lang/String;I)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
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

    .line 72
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&overlayPosition="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p0

    .line 75
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->downloadByUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public downloadOnly(Ljava/lang/String;)Z
    .locals 2

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 55
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p0

    .line 56
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->downloadByUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public lifecycleChanged(Landroid/app/Activity;I)Z
    .locals 1

    .line 218
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p0

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/market/IAppDownloadManager;->lifecycleChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public pauseByFloat(Ljava/lang/String;)Z
    .locals 4

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/xiaomi/market/IAppDownloadManager;->pauseByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 140
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/market/sdk/FloatCardManager$2;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 148
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1
.end method

.method public pauseByFloat(Ljava/lang/String;I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
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

    .line 105
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&overlayPosition="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p2

    .line 109
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/xiaomi/market/IAppDownloadManager;->pauseByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 112
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/market/sdk/FloatCardManager$1;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public resumeByFloat(Ljava/lang/String;)Z
    .locals 4

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    .line 196
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/xiaomi/market/IAppDownloadManager;->resumeByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 199
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$4;

    invoke-direct {v3, p0, v0, p1}, Lcom/market/sdk/FloatCardManager$4;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1
.end method

.method public resumeByFloat(Ljava/lang/String;I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
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

    .line 165
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&overlayPosition="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/market/sdk/FloatService;->openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p2

    .line 169
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/MarketFeatures;->FLOAT_CARD:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {v2, v3}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/xiaomi/market/IAppDownloadManager;->resumeByUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 172
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/FloatCardManager$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/market/sdk/FloatCardManager$3;-><init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 180
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setUseGetApps(Z)V
    .locals 1

    .line 43
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "com.xiaomi.mipicks"

    .line 44
    iput-object p1, p0, Lcom/market/sdk/FloatCardManager;->targetPackage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "MarketManager"

    const-string/jumbo p1, "you can only set target market package name in international build!"

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
