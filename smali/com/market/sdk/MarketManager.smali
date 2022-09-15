.class public Lcom/market/sdk/MarketManager;
.super Ljava/lang/Object;
.source "MarketManager.java"


# static fields
.field private static final ACTION_DOWNLOAD:Ljava/lang/String; = "com.xiaomi.market.service.AppDownloadInstallService"

.field public static final COM_XIAOMI_DISCOVER:Ljava/lang/String; = "com.xiaomi.discover"

.field public static final COM_XIAOMI_MARKET:Ljava/lang/String; = "com.xiaomi.market"

.field public static final COM_XIAOMI_MIPICKS:Ljava/lang/String; = "com.xiaomi.mipicks"

.field public static final EXTRA_APK_PATH:Ljava/lang/String; = "apkPath"

.field public static final EXTRA_PACKGAE_NAME:Ljava/lang/String; = "packageName"

.field public static final EXTRA_REF:Ljava/lang/String; = "ref"

.field public static final EXTRA_START_DOWNLOAD:Ljava/lang/String; = "startDownload"

.field public static final MARKET_PACKAGE_NAME:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "MarketManager"

.field private static volatile sManager:Lcom/market/sdk/MarketManager;


# instance fields
.field private final DETAIL_CLASS_NAME:Ljava/lang/String;

.field public final MARKET_SERVICE_CLASS_NAME:Ljava/lang/String;

.field private final MARKET_USER_AGREEMENT_CLASS:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/market/sdk/MarketManager;->initMarketPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.xiaomi.market.ui.AppDetailActivity"

    .line 49
    iput-object v0, p0, Lcom/market/sdk/MarketManager;->DETAIL_CLASS_NAME:Ljava/lang/String;

    const-string v0, "com.xiaomi.market.data.MarketService"

    .line 50
    iput-object v0, p0, Lcom/market/sdk/MarketManager;->MARKET_SERVICE_CLASS_NAME:Ljava/lang/String;

    const-string v0, "com.xiaomi.market.ui.UserAgreementActivity"

    .line 51
    iput-object v0, p0, Lcom/market/sdk/MarketManager;->MARKET_USER_AGREEMENT_CLASS:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ensureNotUiThread()V
    .locals 2

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t call the method on ui thread"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 85
    sget-object v0, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    iget-object v0, v0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getManager()Lcom/market/sdk/MarketManager;
    .locals 1

    .line 81
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object v0

    return-object v0
.end method

.method public static getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "MarketManager"

    const-string v0, "context is null"

    .line 66
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/market/sdk/utils/AppGlobal;->setContext(Landroid/content/Context;)V

    .line 70
    sget-object v0, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    if-nez v0, :cond_2

    .line 71
    const-class v0, Lcom/market/sdk/MarketManager;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    if-nez v1, :cond_1

    .line 73
    new-instance v1, Lcom/market/sdk/MarketManager;

    invoke-direct {v1, p0}, Lcom/market/sdk/MarketManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    .line 75
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 77
    :cond_2
    :goto_0
    sget-object p0, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    return-object p0
.end method

.method public static getMarketPackageName()Ljava/lang/String;
    .locals 1

    .line 106
    sget-object v0, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static initMarketPackageName()Ljava/lang/String;
    .locals 1

    .line 90
    :try_start_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.discover"

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.market"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    const-string v0, "com.xiaomi.market"

    return-object v0
.end method


# virtual methods
.method public allowConnectToNetwork()Z
    .locals 2

    .line 306
    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 310
    :cond_0
    new-instance v0, Lcom/market/sdk/MarketManager$4;

    invoke-direct {v0, p0}, Lcom/market/sdk/MarketManager$4;-><init>(Lcom/market/sdk/MarketManager;)V

    .line 319
    invoke-virtual {v0}, Lcom/market/sdk/MarketManager$4;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public getApkCheckInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
    .locals 1

    .line 186
    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    .line 187
    new-instance v0, Lcom/market/sdk/MarketManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/market/sdk/MarketManager$2;-><init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    invoke-virtual {v0}, Lcom/market/sdk/MarketManager$2;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/market/sdk/ApkVerifyInfo;

    return-object p1
.end method

.method public getApkVerifyInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    .line 166
    new-instance v0, Lcom/market/sdk/MarketManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/market/sdk/MarketManager$1;-><init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {v0}, Lcom/market/sdk/MarketManager$1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/market/sdk/ApkVerifyInfo;

    return-object p1
.end method

.method public getAppstoreUserGuide()Lcom/market/sdk/homeguide/AppstoreUserGuide;
    .locals 1

    .line 520
    new-instance v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;

    invoke-direct {v0}, Lcom/market/sdk/homeguide/AppstoreUserGuide;-><init>()V

    return-object v0
.end method

.method public varargs getCategory([Ljava/lang/String;)I
    .locals 3

    .line 453
    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    const/4 v0, 0x1

    .line 454
    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    .line 458
    new-instance v2, Lcom/market/sdk/MarketManager$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/market/sdk/MarketManager$5;-><init>(Lcom/market/sdk/MarketManager;Lcom/market/sdk/compat/FutureTaskCompat;[Ljava/lang/String;)V

    .line 471
    invoke-virtual {v2}, Lcom/market/sdk/MarketManager$5;->invokeAsync()V

    .line 472
    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 473
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public varargs getCategoryName([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 481
    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    const/4 v0, 0x1

    .line 482
    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    .line 486
    new-instance v1, Lcom/market/sdk/MarketManager$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/market/sdk/MarketManager$6;-><init>(Lcom/market/sdk/MarketManager;Lcom/market/sdk/compat/FutureTaskCompat;[Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1}, Lcom/market/sdk/MarketManager$6;->invokeAsync()V

    .line 504
    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDesktopFolderConfig(Lcom/market/sdk/IDesktopFolderConfigCallback;)V
    .locals 2

    .line 394
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DESK_RECOMMEND_V3:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market/sdk/MarketService;->openService(Landroid/content/Context;)Lcom/market/sdk/IMarketService;

    move-result-object v0

    .line 397
    :try_start_0
    new-instance v1, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;

    invoke-direct {v1, p1}, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;-><init>(Lcom/market/sdk/IDesktopFolderConfigCallback;)V

    invoke-interface {v0, v1}, Lcom/market/sdk/IMarketService;->getDesktopFolderConfig(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v0, "Market service not impl."

    .line 401
    invoke-interface {p1, v0}, Lcom/market/sdk/IDesktopFolderConfigCallback;->onFailed(Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public getDiscoverUpdateManager()Lcom/market/sdk/DiscoverUpdateManager;
    .locals 1

    .line 524
    invoke-static {}, Lcom/market/sdk/DiscoverUpdateManager;->get()Lcom/market/sdk/DiscoverUpdateManager;

    move-result-object v0

    return-object v0
.end method

.method public getFloatCardManager()Lcom/market/sdk/FloatCardManager;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/market/sdk/FloatCardManager;->get(Landroid/app/Application;)Lcom/market/sdk/FloatCardManager;

    move-result-object v0

    return-object v0
.end method

.method public getOpenDetailIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "packageName"

    .line 215
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ref"

    .line 216
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mimarket://details"

    .line 217
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 218
    new-instance p1, Landroid/content/ComponentName;

    sget-object p2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v1, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public getSearchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimarket://search?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ref="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 231
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 232
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 233
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    .line 234
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p2
.end method

.method public hasFeature(Lcom/market/sdk/MarketFeatures;)Z
    .locals 0

    .line 359
    invoke-virtual {p1}, Lcom/market/sdk/MarketFeatures;->isSupported()Z

    move-result p1

    return p1
.end method

.method public installSystemPackage(Landroid/net/Uri;Lcom/market/pm/api/MarketInstallerListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/pm/api/ComponentNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 508
    invoke-virtual/range {v0 .. v6}, Lcom/market/sdk/MarketManager;->installThirdPartPackage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/market/pm/api/MarketInstallerListener;)V

    return-void
.end method

.method public installThirdPartPackage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/market/pm/api/MarketInstallerListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/pm/api/ComponentNotFoundException;
        }
    .end annotation

    .line 513
    new-instance v0, Lcom/market/pm/api/MarketInstaller;

    iget-object v1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/market/pm/api/MarketInstaller;-><init>(Landroid/content/Context;)V

    .line 514
    invoke-virtual {v0, p6}, Lcom/market/pm/api/MarketInstaller;->setListener(Lcom/market/pm/api/MarketInstallerListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 515
    invoke-virtual/range {v0 .. v5}, Lcom/market/pm/api/MarketInstaller;->installPackage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAppStoreEnabled()Z
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 127
    :cond_0
    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :catch_0
    move-exception v0

    const-string v2, "MarketManager"

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgmentException when get enabled state of appstore : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isAppStoreInstalled()Z
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    return v0
.end method

.method public isAppStoreInstalled(Z)Z
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 144
    :try_start_0
    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 147
    iget p1, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return v2

    :catch_0
    :cond_2
    return v1
.end method

.method public isInWhiteSetForApkCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/market/sdk/utils/WhiteSetManager;->isInWhiteSetForApkCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/ArrayList;Lcom/market/sdk/DesktopRecommendCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/market/sdk/DesktopRecommendCallback;",
            ")V"
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DESK_RECOMMEND_V2:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market/sdk/MarketService;->openService(Landroid/content/Context;)Lcom/market/sdk/IMarketService;

    move-result-object v1

    .line 373
    :try_start_0
    new-instance v6, Lcom/market/sdk/DesktopRecommendCallbackAdapter;

    invoke-direct {v6, p5}, Lcom/market/sdk/DesktopRecommendCallbackAdapter;-><init>(Lcom/market/sdk/DesktopRecommendCallback;)V

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/market/sdk/IMarketService;->loadDesktopRecommendInfoV2(JLjava/lang/String;Ljava/util/List;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/market/internal/DesktopRecommendManager;->loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/List;Lcom/market/sdk/DesktopRecommendCallback;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;Lcom/market/sdk/DesktopRecommendCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/market/sdk/DesktopRecommendCallback;",
            ")V"
        }
    .end annotation

    .line 381
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DESK_RECOMMEND_V3:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Lcom/market/sdk/DesktopRecommendArgs;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/market/sdk/DesktopRecommendArgs;-><init>(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 383
    iget-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/market/sdk/MarketService;->openService(Landroid/content/Context;)Lcom/market/sdk/IMarketService;

    move-result-object p1

    .line 385
    :try_start_0
    invoke-virtual {v0}, Lcom/market/sdk/DesktopRecommendArgs;->parcel()Landroid/os/Bundle;

    move-result-object p2

    new-instance p3, Lcom/market/sdk/DesktopRecommendCallbackAdapter;

    invoke-direct {p3, p6}, Lcom/market/sdk/DesktopRecommendCallbackAdapter;-><init>(Lcom/market/sdk/DesktopRecommendCallback;)V

    invoke-interface {p1, p2, p3}, Lcom/market/sdk/IMarketService;->loadDesktopRecommendInfoV3(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 389
    invoke-virtual/range {v0 .. v5}, Lcom/market/sdk/MarketManager;->loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/ArrayList;Lcom/market/sdk/DesktopRecommendCallback;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/ImageCallback;)V
    .locals 0

    .line 346
    invoke-static {p1, p2, p3}, Lcom/market/sdk/ImageManager;->loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/ImageCallback;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;IILcom/market/sdk/ImageCallback;)V
    .locals 0

    .line 350
    invoke-static {p1, p2, p3, p4}, Lcom/market/sdk/ImageManager;->loadImage(Ljava/lang/String;IILcom/market/sdk/ImageCallback;)V

    return-void
.end method

.method public openSearchActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 246
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimarket://search?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&ref="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 250
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 251
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 252
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 253
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    .line 254
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    .line 257
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 258
    iget-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public openSearchActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimarket://search?q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ref="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 275
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 276
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 277
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    .line 278
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 280
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    iget-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public recourdStaticsCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 290
    new-instance v0, Lcom/market/sdk/MarketManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/market/sdk/MarketManager$3;-><init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Lcom/market/sdk/MarketManager$3;->invokeAsync()V

    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/market/sdk/DownloadResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/market/sdk/DownloadResponse;"
        }
    .end annotation

    .line 407
    new-instance v0, Lcom/market/sdk/DownloadResponse;

    invoke-direct {v0}, Lcom/market/sdk/DownloadResponse;-><init>()V

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    .line 409
    iput p1, v0, Lcom/market/sdk/DownloadResponse;->code:I

    return-object v0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/market/sdk/utils/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, -0x2

    .line 414
    iput p1, v0, Lcom/market/sdk/DownloadResponse;->code:I

    const-string p1, "install_no_network_description"

    .line 415
    invoke-static {p1}, Lcom/market/sdk/utils/Utils;->getStringResources(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/market/sdk/DownloadResponse;->msg:Ljava/lang/String;

    return-object v0

    .line 419
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.market.service.AppDownloadInstallService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appId"

    .line 421
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packageName"

    .line 422
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "senderPackageName"

    .line 423
    iget-object p2, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ref"

    .line 424
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_3

    .line 426
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 427
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 429
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 430
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 431
    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string p1, "extra_query_params"

    .line 433
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "MarketManager"

    .line 435
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 439
    iput p1, v0, Lcom/market/sdk/DownloadResponse;->code:I

    return-object v0
.end method

.method public startUserAgreementActivity(Landroid/app/Activity;I)Z
    .locals 5

    const/4 v0, 0x1

    .line 330
    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 334
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v4, "com.xiaomi.market.ui.UserAgreementActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateApplicationEnableState()V
    .locals 3

    .line 445
    :try_start_0
    invoke-static {}, Lcom/market/sdk/EnableStateManager;->getManager()Lcom/market/sdk/EnableStateManager;

    move-result-object v0

    invoke-static {}, Lcom/market/sdk/utils/Utils;->isFirstBoot()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/market/sdk/EnableStateManager;->updateApplicationEnableState(Z)V

    const-string v0, "MarketManager"

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFirstBoot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/market/sdk/utils/Utils;->isFirstBoot()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MarketManager"

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
