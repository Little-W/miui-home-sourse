.class public Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;
.super Ljava/lang/Object;
.source "InternalPreInstallAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$LoadImageCallback;
    }
.end annotation


# static fields
.field private static final ACTION_INTERNAL_PREINSTALL:Ljava/lang/String; = "miui.intent.action.ad.INTERNAL_PREINSTALL_SERVICE"

.field private static final TAG:Ljava/lang/String; = "InternalPreInstallAdHelper"

.field private static sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

.field private static sLoadingIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/miui/msa/internal/preinstall/v1/ImageCallback;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sLoadingIcons:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 41
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 26
    sget-object v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 26
    sget-object v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sLoadingIcons:Ljava/util/Map;

    return-object v0
.end method

.method private avoidOnMainThread()V
    .locals 2

    .line 210
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not run on main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 2

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ad.INTERNAL_PREINSTALL_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/msa/internal/common/utils/MsaUtils;->getMsaPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;
    .locals 2

    .line 46
    sget-object v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sInstance:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sInstance:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    invoke-direct {v1, p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sInstance:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 53
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sInstance:Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    return-object p0
.end method

.method private isSupported()Z
    .locals 3

    .line 200
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 202
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public getCNColudControl()Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;
    .locals 4

    .line 174
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->avoidOnMainThread()V

    .line 175
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "InternalPreInstallAdHelper"

    const-string v2, "getCNColudControl"

    .line 179
    invoke-static {v0, v2}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$6;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$6;-><init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$6;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public handleClick(Ljava/util/List;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;",
            ">;IJ)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->avoidOnMainThread()V

    .line 137
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InternalPreInstallAdHelper"

    const-string v1, "handleClick"

    .line 141
    invoke-static {v0, v1}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;-><init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/util/List;IJ)V

    .line 151
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$4;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void
.end method

.method public handleDislike(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V
    .locals 8

    .line 155
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->avoidOnMainThread()V

    .line 156
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InternalPreInstallAdHelper"

    const-string v1, "handleDislike"

    .line 160
    invoke-static {v0, v1}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$5;

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$5;-><init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    .line 170
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$5;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void
.end method

.method public handleView(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V
    .locals 8

    .line 117
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->avoidOnMainThread()V

    .line 118
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InternalPreInstallAdHelper"

    const-string v1, "handleView"

    .line 122
    invoke-static {v0, v1}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$3;

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$3;-><init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;I)V

    .line 132
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$3;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void
.end method

.method public loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v1/FolderInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/internal/preinstall/v1/FolderInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->avoidOnMainThread()V

    .line 58
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "InternalPreInstallAdHelper"

    const-string v2, "loadDesktopRecommendAdInfo"

    .line 62
    invoke-static {v0, v2}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$1;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$1;-><init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/internal/preinstall/v1/FolderInfo;)V

    .line 69
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$1;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v1/ImageCallback;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->avoidOnMainThread()V

    .line 75
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InternalPreInstallAdHelper"

    const-string v1, "loadImage"

    .line 79
    invoke-static {v0, v1}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_0
    sget-object v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 82
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "InternalPreInstallAdHelper"

    const-string v2, "callback return"

    .line 83
    invoke-static {v1, v2}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-interface {p2, p1, v0}, Lcom/miui/msa/internal/preinstall/v1/ImageCallback;->onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    return-void

    .line 89
    :cond_1
    sget-object v0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sLoadingIcons:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    sget-object v1, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 91
    sget-object v2, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_2

    .line 93
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 94
    sget-object v3, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    .line 98
    new-instance p2, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$2;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/msa/internal/preinstall/v1/IInternalPreInstallAd;

    invoke-direct {p2, p0, v1, v2, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$2;-><init>(Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper$2;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    .line 110
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "InternalPreInstallAdHelper"

    const-string v0, "loadImage exception: "

    .line 112
    invoke-static {p2, v0, p1}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
