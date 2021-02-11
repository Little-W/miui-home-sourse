.class public Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;
.super Ljava/lang/Object;
.source "GlobalGuessYouLikeAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$LoadImageCallback;
    }
.end annotation


# static fields
.field private static final ACTION_GLOBAL_GUESS_YOU_LIKE:Ljava/lang/String; = "miui.intent.action.ad.GLOBAL_GUESS_YOU_LIKE_SERVICE"

.field private static final TAG:Ljava/lang/String; = "GlobalGuessYouLikeAdHelper"

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

.field private static sInstance:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

.field private static sLoadingIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sLoadingIcons:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 49
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 34
    sget-object v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 34
    sget-object v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sLoadingIcons:Ljava/util/Map;

    return-object v0
.end method

.method private avoidOnMainThread()V
    .locals 2

    .line 242
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not run on main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 2

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ad.GLOBAL_GUESS_YOU_LIKE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/msa/internal/common/utils/MsaUtils;->getMsaPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;
    .locals 2

    .line 54
    sget-object v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sInstance:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sInstance:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    invoke-direct {v1, p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sInstance:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 61
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sInstance:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    return-object p0
.end method

.method private isSupported()Z
    .locals 3

    .line 232
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 234
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public getGameFolders(Ljava/util/Map;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->avoidOnMainThread()V

    .line 207
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "GlobalGuessYouLikeAdHelper"

    const-string v2, "getGameFolders"

    .line 211
    invoke-static {v0, v2}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$7;

    iget-object v5, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    const-class v6, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    move-object v3, v0

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$7;-><init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/util/Map;Z)V

    .line 221
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$7;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public getGlobalColudControl()Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;
    .locals 4

    .line 181
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->avoidOnMainThread()V

    .line 182
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "GlobalGuessYouLikeAdHelper"

    const-string v2, "getGlobalColudControl"

    .line 186
    invoke-static {v0, v2}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$6;

    iget-object v2, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    invoke-direct {v0, p0, v2, v3}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$6;-><init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$6;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;

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
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;",
            ">;IJ)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->avoidOnMainThread()V

    .line 144
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GlobalGuessYouLikeAdHelper"

    const-string v1, "handleClick"

    .line 148
    invoke-static {v0, v1}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;

    iget-object v4, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;-><init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/util/List;IJ)V

    .line 158
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$4;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void
.end method

.method public handleDislike(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V
    .locals 8

    .line 162
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->avoidOnMainThread()V

    .line 163
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GlobalGuessYouLikeAdHelper"

    const-string v1, "handleDislike"

    .line 167
    invoke-static {v0, v1}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$5;

    iget-object v4, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$5;-><init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V

    .line 177
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$5;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void
.end method

.method public handleView(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V
    .locals 8

    .line 124
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->avoidOnMainThread()V

    .line 125
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GlobalGuessYouLikeAdHelper"

    const-string v1, "handleView"

    .line 129
    invoke-static {v0, v1}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$3;

    iget-object v4, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$3;-><init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V

    .line 139
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$3;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void
.end method

.method public loadGlobalFolderRecommendAdInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->avoidOnMainThread()V

    .line 66
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "GlobalGuessYouLikeAdHelper"

    const-string v0, "loadGlobalFolderRecommendAdInfo error by not supported!"

    .line 67
    invoke-static {p1, v0}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "GlobalGuessYouLikeAdHelper"

    const-string v2, "loadGlobalFolderRecommendAdInfo"

    .line 70
    invoke-static {v0, v2}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$1;

    iget-object v2, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$1;-><init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;)V

    .line 77
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$1;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public loadImage(Ljava/lang/String;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V
    .locals 4

    .line 82
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->avoidOnMainThread()V

    .line 83
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GlobalGuessYouLikeAdHelper"

    const-string v1, "loadImage"

    .line 86
    invoke-static {v0, v1}, Lcom/miui/msa/internal/common/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_0
    sget-object v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 89
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GlobalGuessYouLikeAdHelper"

    const-string v2, "callback return"

    .line 90
    invoke-static {v1, v2}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-interface {p2, p1, v0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;->onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    return-void

    .line 96
    :cond_1
    sget-object v0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sLoadingIcons:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    sget-object v1, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 98
    sget-object v2, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_2

    .line 100
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 101
    sget-object v3, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    .line 105
    new-instance p2, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$2;

    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    invoke-direct {p2, p0, v1, v2, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$2;-><init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$2;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    .line 117
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

    const-string p2, "GlobalGuessYouLikeAdHelper"

    const-string v0, "loadImage exception: "

    .line 119
    invoke-static {p2, v0, p1}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
