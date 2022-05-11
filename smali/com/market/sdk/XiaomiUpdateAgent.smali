.class public Lcom/market/sdk/XiaomiUpdateAgent;
.super Ljava/lang/Object;
.source "XiaomiUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;,
        Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketUpdateAgent"

.field private static mAppInfo:Lcom/market/sdk/LocalAppInfo;

.field private static mAutoPopup:Z

.field private static mCheckUpdateOnlyWifi:Z

.field private static mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsInited:Z

.field private static mIsLoading:Z

.field private static mIsPathcerLibraryLoaded:Z

.field private static mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

.field private static mUpdateListener:Lcom/market/sdk/XiaomiUpdateListener;

.field private static mUpdateMethod:Lcom/market/sdk/utils/Constants$UpdateMethod;

.field private static sAbTestIdentifer:Lcom/market/sdk/AbTestIdentifier;

.field private static sDebug:Z

.field private static sUseImeiMd5AsIdentifier:Z

.field private static sUseSandbox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->mAutoPopup:Z

    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    .line 49
    sput-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    .line 50
    sput-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->sUseImeiMd5AsIdentifier:Z

    .line 55
    invoke-static {}, Lcom/market/sdk/utils/Utils;->isMiuiPad()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/market/sdk/utils/Constants$UpdateMethod;->DOWNLOAD_MANAGER:Lcom/market/sdk/utils/Constants$UpdateMethod;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/market/sdk/utils/Constants$UpdateMethod;->MARKET:Lcom/market/sdk/utils/Constants$UpdateMethod;

    :goto_0
    sput-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateMethod:Lcom/market/sdk/utils/Constants$UpdateMethod;

    .line 58
    sget-object v0, Lcom/market/sdk/AbTestIdentifier;->ANDROID_ID:Lcom/market/sdk/AbTestIdentifier;

    sput-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->sAbTestIdentifer:Lcom/market/sdk/AbTestIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->mAutoPopup:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 41
    sput-boolean p0, Lcom/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    return p0
.end method

.method static synthetic access$1100()Lcom/market/sdk/XiaomiUpdateListener;
    .locals 1

    .line 41
    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateListener:Lcom/market/sdk/XiaomiUpdateListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 41
    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    return v0
.end method

.method static synthetic access$400()Lcom/market/sdk/LocalAppInfo;
    .locals 1

    .line 41
    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/market/sdk/LocalAppInfo;)Lcom/market/sdk/LocalAppInfo;
    .locals 0

    .line 41
    sput-object p0, Lcom/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->sUseSandbox:Z

    return v0
.end method

.method static synthetic access$600()Lcom/market/sdk/AbTestIdentifier;
    .locals 1

    .line 41
    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->sAbTestIdentifer:Lcom/market/sdk/AbTestIdentifier;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->sUseImeiMd5AsIdentifier:Z

    return v0
.end method

.method static synthetic access$800()Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 1

    .line 41
    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 0

    .line 41
    sput-object p0, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    return-object p0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    .line 41
    sput-boolean p0, Lcom/market/sdk/XiaomiUpdateAgent;->mIsLoading:Z

    return p0
.end method

.method public static arrange()V
    .locals 1

    .line 140
    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {v0}, Lcom/market/sdk/utils/Client;->init(Landroid/content/Context;)V

    .line 145
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->openMarketOrArrange()V

    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0

    .line 81
    sput-boolean p0, Lcom/market/sdk/XiaomiUpdateAgent;->sDebug:Z

    .line 82
    sget-boolean p0, Lcom/market/sdk/XiaomiUpdateAgent;->sDebug:Z

    sput-boolean p0, Lcom/market/sdk/utils/Utils;->DEBUG:Z

    return-void
.end method

.method public static getAbTestIdentifier()Lcom/market/sdk/AbTestIdentifier;
    .locals 1

    .line 214
    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->sAbTestIdentifer:Lcom/market/sdk/AbTestIdentifier;

    return-object v0
.end method

.method public static getAppInfo(Landroid/content/Context;)Lcom/market/sdk/LocalAppInfo;
    .locals 4

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/market/sdk/LocalAppInfo;->get(Ljava/lang/String;)Lcom/market/sdk/LocalAppInfo;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 230
    :try_start_0
    iget-object v2, v0, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "MarketUpdateAgent"

    const-string v3, "get package info failed"

    .line 233
    invoke-static {v2, v3}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 235
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 236
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 237
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/market/sdk/LocalAppInfo;->displayName:Ljava/lang/String;

    .line 238
    iget p0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p0, v0, Lcom/market/sdk/LocalAppInfo;->versionCode:I

    .line 239
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p0, v0, Lcom/market/sdk/LocalAppInfo;->versionName:Ljava/lang/String;

    .line 240
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    .line 241
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/market/sdk/utils/Coder;->encodeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    .line 242
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p0, v0, Lcom/market/sdk/LocalAppInfo;->sourceDir:Ljava/lang/String;

    .line 243
    new-instance p0, Ljava/io/File;

    iget-object v1, v0, Lcom/market/sdk/LocalAppInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/market/sdk/utils/Coder;->encodeMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/market/sdk/LocalAppInfo;->sourceMD5:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 222
    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public static getDownloadId()J
    .locals 2

    .line 192
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market/sdk/DownloadInstallManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/DownloadInstallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/DownloadInstallManager;->getDowloadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSDKVersion()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public static openMarketOrArrange()V
    .locals 6

    .line 480
    sget-object v0, Lcom/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 481
    sget-object v1, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 485
    :cond_0
    sget-object v1, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateMethod:Lcom/market/sdk/utils/Constants$UpdateMethod;

    sget-object v2, Lcom/market/sdk/utils/Constants$UpdateMethod;->MARKET:Lcom/market/sdk/utils/Constants$UpdateMethod;

    invoke-virtual {v1, v2}, Lcom/market/sdk/utils/Constants$UpdateMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    sget-object v1, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget v1, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->source:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-static {v0}, Lcom/market/sdk/utils/Utils;->isMiuiMarketExisted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?ref=update_sdk&back=true&id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    iget-object v3, v3, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 488
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 489
    invoke-static {}, Lcom/market/sdk/utils/Utils;->getMarketPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    .line 492
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 493
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 494
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 495
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000000

    .line 497
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 503
    :cond_1
    invoke-static {v0}, Lcom/market/sdk/DownloadInstallManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/DownloadInstallManager;

    move-result-object v0

    sget-object v1, Lcom/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    sget-object v2, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-virtual {v0, v1, v2}, Lcom/market/sdk/DownloadInstallManager;->arrange(Lcom/market/sdk/LocalAppInfo;Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static setAbTestIdentifer(Lcom/market/sdk/AbTestIdentifier;)V
    .locals 0

    .line 210
    sput-object p0, Lcom/market/sdk/XiaomiUpdateAgent;->sAbTestIdentifer:Lcom/market/sdk/AbTestIdentifier;

    return-void
.end method

.method public static setCheckUpdateOnlyWifi(Z)V
    .locals 0

    .line 160
    sput-boolean p0, Lcom/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    return-void
.end method

.method public static setServer(Lcom/market/sdk/ServerType;)V
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/market/sdk/utils/Constants;->setServerType(Lcom/market/sdk/ServerType;)V

    return-void
.end method

.method public static setUpdateAutoPopup(Z)V
    .locals 0

    .line 152
    sput-boolean p0, Lcom/market/sdk/XiaomiUpdateAgent;->mAutoPopup:Z

    return-void
.end method

.method public static setUpdateListener(Lcom/market/sdk/XiaomiUpdateListener;)V
    .locals 0

    .line 168
    sput-object p0, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateListener:Lcom/market/sdk/XiaomiUpdateListener;

    return-void
.end method

.method public static setUpdateMethod(Lcom/market/sdk/utils/Constants$UpdateMethod;)V
    .locals 0

    .line 185
    sput-object p0, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateMethod:Lcom/market/sdk/utils/Constants$UpdateMethod;

    return-void
.end method

.method public static setUseImeiMd5AsIdentifier(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 201
    sget-object p0, Lcom/market/sdk/AbTestIdentifier;->IMEI_MD5:Lcom/market/sdk/AbTestIdentifier;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/market/sdk/AbTestIdentifier;->ANDROID_ID:Lcom/market/sdk/AbTestIdentifier;

    :goto_0
    sput-object p0, Lcom/market/sdk/XiaomiUpdateAgent;->sAbTestIdentifer:Lcom/market/sdk/AbTestIdentifier;

    return-void
.end method

.method public static setUseInternationalHost(Z)V
    .locals 0

    .line 115
    invoke-static {p0}, Lcom/market/sdk/utils/Constants;->setUseInternalProductUrl(Z)V

    return-void
.end method

.method public static declared-synchronized update(Z)V
    .locals 4

    const-class v0, Lcom/market/sdk/XiaomiUpdateAgent;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-boolean v1, Lcom/market/sdk/XiaomiUpdateAgent;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 91
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 93
    :try_start_1
    sput-boolean v1, Lcom/market/sdk/XiaomiUpdateAgent;->mIsLoading:Z

    .line 94
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market/sdk/utils/Client;->init(Landroid/content/Context;)V

    .line 95
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    .line 96
    sput-boolean p0, Lcom/market/sdk/XiaomiUpdateAgent;->sUseSandbox:Z

    .line 98
    sget-boolean p0, Lcom/market/sdk/XiaomiUpdateAgent;->mIsInited:Z

    const/4 v2, 0x0

    if-nez p0, :cond_1

    .line 99
    sput-object v2, Lcom/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    .line 100
    sput-object v2, Lcom/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    .line 101
    invoke-static {}, Lcom/market/sdk/utils/Constants;->configURL()V

    .line 102
    sput-boolean v1, Lcom/market/sdk/XiaomiUpdateAgent;->mIsInited:Z

    .line 104
    :cond_1
    new-instance p0, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;

    invoke-direct {p0, v2}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;-><init>(Lcom/market/sdk/XiaomiUpdateAgent$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static useImeiMd5AsIdentifier()Z
    .locals 1

    .line 218
    sget-boolean v0, Lcom/market/sdk/XiaomiUpdateAgent;->sUseImeiMd5AsIdentifier:Z

    return v0
.end method
