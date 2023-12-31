.class public Lcom/market/sdk/DirectMailManager;
.super Ljava/lang/Object;
.source "DirectMailManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DirectMailManager"

.field private static volatile sInstance:Lcom/market/sdk/DirectMailManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/market/sdk/DirectMailManager;
    .locals 2

    .line 16
    sget-object v0, Lcom/market/sdk/DirectMailManager;->sInstance:Lcom/market/sdk/DirectMailManager;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/market/sdk/DirectMailManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/market/sdk/DirectMailManager;->sInstance:Lcom/market/sdk/DirectMailManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/market/sdk/DirectMailManager;

    invoke-direct {v1}, Lcom/market/sdk/DirectMailManager;-><init>()V

    sput-object v1, Lcom/market/sdk/DirectMailManager;->sInstance:Lcom/market/sdk/DirectMailManager;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/market/sdk/DirectMailManager;->sInstance:Lcom/market/sdk/DirectMailManager;

    return-object v0
.end method


# virtual methods
.method public preloadAppDetail(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 35
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/PreloadAppDetailService;->openService()Lcom/xiaomi/market/IPreloadAppDetailService;

    move-result-object p0

    .line 36
    invoke-interface {p0, p1}, Lcom/xiaomi/market/IPreloadAppDetailService;->preloadAppDetail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DirectMailManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
