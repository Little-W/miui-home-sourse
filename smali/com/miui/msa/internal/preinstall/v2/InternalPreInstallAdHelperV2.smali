.class Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;
.super Ljava/lang/Object;
.source "InternalPreInstallAdHelperV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$LoadImageCallback;
    }
.end annotation


# static fields
.field private static final ACTION_INTERNAL_PREINSTALL:Ljava/lang/String; = "miui.intent.action.ad.INTERNAL_PREINSTALL_SERVICEV2"

.field private static final TAG:Ljava/lang/String; = "InternalPreInstallAdHelperV2"

.field private static final TAGID_PRE_INSTALL_HOT:Ljava/lang/String; = "1.32.5.3"

.field private static final TAGID_PRE_INSTALL_RECOMMEND:Ljava/lang/String; = "1.32.5.1"

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

.field private static volatile sInstance:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

.field private static sLoadingIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/miui/msa/internal/preinstall/v2/ImageCallback;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sLoadingIcons:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 28
    sget-object v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 28
    sget-object v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sLoadingIcons:Ljava/util/Map;

    return-object v0
.end method

.method private avoidOnMainThread()V
    .locals 2

    .line 259
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not run on main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildIntent()Landroid/content/Intent;
    .locals 2

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ad.INTERNAL_PREINSTALL_SERVICEV2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->getMsaPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;
    .locals 2

    .line 50
    sget-object v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sInstance:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sInstance:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    invoke-direct {v1, p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sInstance:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 57
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sInstance:Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;

    return-object p0
.end method

.method private isHotOrRecFolder(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getTagId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.32.5.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getTagId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1.32.5.1"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSupported()Z
    .locals 3

    .line 249
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->buildIntent()Landroid/content/Intent;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 251
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private saveInitAdCount(Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->getPreloadHotValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "1.32.5.3"

    .line 222
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getInitCount(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "1.32.5.1"

    .line 223
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->getPreloadRecValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->putInitCount(Ljava/lang/String;I)V

    const-string v0, "1.32.5.3"

    .line 224
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->getPreloadHotValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->putInitCount(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private setAdCount(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V
    .locals 2

    .line 229
    invoke-direct {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->isHotOrRecFolder(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getTagId()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getInitCount(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setInitCount(I)V

    .line 232
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getInstallCount(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setInstallCount(I)V

    .line 233
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getDeleteCount(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setDeleteCount(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCNColudControl()Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
    .locals 3

    .line 199
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->avoidOnMainThread()V

    .line 200
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "InternalPreInstallAdHelperV2"

    const-string v1, "getCNColudControl"

    .line 204
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$6;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$6;-><init>(Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->buildIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$6;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    .line 216
    invoke-direct {p0, v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->saveInitAdCount(Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;)V

    return-object v0
.end method

.method public handleClick(Ljava/util/List;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;IJ)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->avoidOnMainThread()V

    .line 161
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "InternalPreInstallAdHelperV2"

    const-string v1, "handleClick"

    .line 165
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    invoke-direct {p0, v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->setAdCount(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V

    .line 167
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$4;

    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    const-class v4, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$4;-><init>(Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;Landroid/content/Context;Ljava/lang/Class;Ljava/util/List;IJ)V

    .line 176
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$4;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .locals 8

    .line 180
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->avoidOnMainThread()V

    .line 181
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InternalPreInstallAdHelperV2"

    const-string v1, "handleDislike"

    .line 185
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$5;

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$5;-><init>(Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    .line 195
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$5;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void
.end method

.method public handleView(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .locals 8

    .line 141
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->avoidOnMainThread()V

    .line 142
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "InternalPreInstallAdHelperV2"

    const-string v1, "handleView"

    .line 145
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->setAdCount(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V

    .line 147
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$3;

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$3;-><init>(Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    .line 156
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$3;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/msa/internal/preinstall/v2/FolderInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->avoidOnMainThread()V

    .line 62
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "InternalPreInstallAdHelperV2"

    const-string v1, "loadDesktopRecommendAdInfo"

    .line 66
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->getTagId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.32.5.1"

    .line 69
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1.32.5.3"

    .line 70
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    :cond_1
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getInitCount(Ljava/lang/String;)I

    move-result v1

    .line 72
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getInstallCount(Ljava/lang/String;)I

    move-result v2

    .line 73
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getDeleteCount(Ljava/lang/String;)I

    move-result v3

    .line 74
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/utils/FolderUtils;->getDeletePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 75
    invoke-virtual {p1, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setInitValue(I)V

    .line 76
    invoke-virtual {p1, v2}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setInstalledValue(I)V

    .line 77
    invoke-virtual {p1, v3}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setDeletedValue(I)V

    .line 78
    invoke-virtual {p1, v4}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setDeletedPackages(Ljava/util/List;)V

    const-string v5, "InternalPreInstallAdHelperV2"

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tagId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",initCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",installCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",deleteCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",installPackages="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",deletePackages="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v5, v0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_2
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$1;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$1;-><init>(Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;Landroid/content/Context;Ljava/lang/Class;Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)V

    .line 92
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$1;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadImage(Ljava/lang/String;Lcom/miui/msa/internal/preinstall/v2/ImageCallback;)V
    .locals 4

    .line 97
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->avoidOnMainThread()V

    .line 98
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InternalPreInstallAdHelperV2"

    const-string v1, "loadImage"

    .line 102
    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :try_start_0
    sget-object v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 105
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "InternalPreInstallAdHelperV2"

    const-string v2, "callback return"

    .line 106
    invoke-static {v1, v2}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {p2, p1, v0}, Lcom/miui/msa/internal/preinstall/v2/ImageCallback;->onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sLoadingIcons:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    sget-object v1, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 114
    sget-object v2, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_2

    .line 116
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 117
    sget-object v3, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    .line 121
    new-instance p2, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$2;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/msa/internal/preinstall/v2/IInternalPreInstallAdV2;

    invoke-direct {p2, p0, v1, v2, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$2;-><init>(Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2;->buildIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelperV2$2;->invoke(Landroid/content/Intent;)Ljava/lang/Object;

    .line 134
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

    const-string p2, "InternalPreInstallAdHelperV2"

    const-string v0, "loadImage exception: "

    .line 136
    invoke-static {p2, v0, p1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
