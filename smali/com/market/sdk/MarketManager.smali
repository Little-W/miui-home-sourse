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

    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t call the method on ui thread"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 76
    sget-object v0, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    iget-object v0, v0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getManager()Lcom/market/sdk/MarketManager;
    .locals 3

    .line 65
    sget-object v0, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    if-nez v0, :cond_1

    .line 66
    const-class v0, Lcom/market/sdk/MarketManager;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/market/sdk/MarketManager;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/market/sdk/MarketManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_1
    :goto_0
    sget-object v0, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    return-object v0
.end method

.method public static getMarketPackageName()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static initMarketPackageName()Ljava/lang/String;
    .locals 1

    .line 81
    :try_start_0
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

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

    .line 297
    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    const/4 v0, 0x1

    .line 298
    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 301
    :cond_0
    new-instance v0, Lcom/market/sdk/MarketManager$4;

    invoke-direct {v0, p0}, Lcom/market/sdk/MarketManager$4;-><init>(Lcom/market/sdk/MarketManager;)V

    .line 310
    invoke-virtual {v0}, Lcom/market/sdk/MarketManager$4;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public getApkCheckInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    .line 178
    new-instance v0, Lcom/market/sdk/MarketManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/market/sdk/MarketManager$2;-><init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    invoke-virtual {v0}, Lcom/market/sdk/MarketManager$2;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/market/sdk/ApkVerifyInfo;

    return-object p1
.end method

.method public getApkVerifyInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    .line 157
    new-instance v0, Lcom/market/sdk/MarketManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/market/sdk/MarketManager$1;-><init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    invoke-virtual {v0}, Lcom/market/sdk/MarketManager$1;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/market/sdk/ApkVerifyInfo;

    return-object p1
.end method

.method public getAppstoreUserGuide()Lcom/market/sdk/homeguide/AppstoreUserGuide;
    .locals 1

    .line 511
    new-instance v0, Lcom/market/sdk/homeguide/AppstoreUserGuide;

    invoke-direct {v0}, Lcom/market/sdk/homeguide/AppstoreUserGuide;-><init>()V

    return-object v0
.end method

.method public varargs getCategory([Ljava/lang/String;)I
    .locals 3

    .line 444
    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    const/4 v0, 0x1

    .line 445
    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    .line 449
    new-instance v2, Lcom/market/sdk/MarketManager$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/market/sdk/MarketManager$5;-><init>(Lcom/market/sdk/MarketManager;Lcom/market/sdk/compat/FutureTaskCompat;[Ljava/lang/String;)V

    .line 462
    invoke-virtual {v2}, Lcom/market/sdk/MarketManager$5;->invokeAsync()V

    .line 463
    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 464
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

    .line 472
    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    const/4 v0, 0x1

    .line 473
    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    .line 477
    new-instance v1, Lcom/market/sdk/MarketManager$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/market/sdk/MarketManager$6;-><init>(Lcom/market/sdk/MarketManager;Lcom/market/sdk/compat/FutureTaskCompat;[Ljava/lang/String;)V

    .line 494
    invoke-virtual {v1}, Lcom/market/sdk/MarketManager$6;->invokeAsync()V

    .line 495
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

    .line 385
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DESK_RECOMMEND_V3:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market/sdk/MarketService;->openService(Landroid/content/Context;)Lcom/market/sdk/IMarketService;

    move-result-object v0

    .line 388
    :try_start_0
    new-instance v1, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;

    invoke-direct {v1, p1}, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;-><init>(Lcom/market/sdk/IDesktopFolderConfigCallback;)V

    invoke-interface {v0, v1}, Lcom/market/sdk/IMarketService;->getDesktopFolderConfig(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v0, "Market service not impl."

    .line 392
    invoke-interface {p1, v0}, Lcom/market/sdk/IDesktopFolderConfigCallback;->onFailed(Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public getDiscoverUpdateManager()Lcom/market/sdk/DiscoverUpdateManager;
    .locals 1

    .line 515
    invoke-static {}, Lcom/market/sdk/DiscoverUpdateManager;->get()Lcom/market/sdk/DiscoverUpdateManager;

    move-result-object v0

    return-object v0
.end method

.method public getFloatCardManager()Lcom/market/sdk/FloatCardManager;
    .locals 1

    .line 519
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

    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "packageName"

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ref"

    .line 207
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mimarket://details"

    .line 208
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 209
    new-instance p1, Landroid/content/ComponentName;

    sget-object p2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v1, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public getSearchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 220
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

    .line 221
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 222
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 223
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 224
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    .line 225
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p2
.end method

.method public hasFeature(Lcom/market/sdk/MarketFeatures;)Z
    .locals 0

    .line 350
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

    .line 499
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

    .line 504
    new-instance v0, Lcom/market/pm/api/MarketInstaller;

    iget-object v1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/market/pm/api/MarketInstaller;-><init>(Landroid/content/Context;)V

    .line 505
    invoke-virtual {v0, p6}, Lcom/market/pm/api/MarketInstaller;->setListener(Lcom/market/pm/api/MarketInstallerListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 506
    invoke-virtual/range {v0 .. v5}, Lcom/market/pm/api/MarketInstaller;->installPackage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAppStoreEnabled()Z
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 118
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

    .line 122
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

    .line 105
    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    return v0
.end method

.method public isAppStoreInstalled(Z)Z
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    :try_start_0
    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 138
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

    .line 195
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

    .line 361
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DESK_RECOMMEND_V2:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market/sdk/MarketService;->openService(Landroid/content/Context;)Lcom/market/sdk/IMarketService;

    move-result-object v1

    .line 364
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

    .line 367
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

    .line 372
    sget-object v0, Lcom/market/sdk/MarketFeatures;->DESK_RECOMMEND_V3:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Lcom/market/sdk/DesktopRecommendArgs;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/market/sdk/DesktopRecommendArgs;-><init>(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 374
    iget-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/market/sdk/MarketService;->openService(Landroid/content/Context;)Lcom/market/sdk/IMarketService;

    move-result-object p1

    .line 376
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

    .line 380
    invoke-virtual/range {v0 .. v5}, Lcom/market/sdk/MarketManager;->loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/ArrayList;Lcom/market/sdk/DesktopRecommendCallback;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/ImageCallback;)V
    .locals 0

    .line 337
    invoke-static {p1, p2, p3}, Lcom/market/sdk/ImageManager;->loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/ImageCallback;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;IILcom/market/sdk/ImageCallback;)V
    .locals 0

    .line 341
    invoke-static {p1, p2, p3, p4}, Lcom/market/sdk/ImageManager;->loadImage(Ljava/lang/String;IILcom/market/sdk/ImageCallback;)V

    return-void
.end method

.method public openSearchActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 237
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 240
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

    .line 241
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 242
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 243
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 244
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    .line 245
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    .line 248
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 249
    iget-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
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

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
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

    .line 265
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 266
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 267
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 268
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    .line 269
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 271
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    iget-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public recourdStaticsCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 281
    new-instance v0, Lcom/market/sdk/MarketManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/market/sdk/MarketManager$3;-><init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
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

    .line 398
    new-instance v0, Lcom/market/sdk/DownloadResponse;

    invoke-direct {v0}, Lcom/market/sdk/DownloadResponse;-><init>()V

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    .line 400
    iput p1, v0, Lcom/market/sdk/DownloadResponse;->code:I

    return-object v0

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/market/sdk/utils/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, -0x2

    .line 405
    iput p1, v0, Lcom/market/sdk/DownloadResponse;->code:I

    const-string p1, "install_no_network_description"

    .line 406
    invoke-static {p1}, Lcom/market/sdk/utils/Utils;->getStringResources(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/market/sdk/DownloadResponse;->msg:Ljava/lang/String;

    return-object v0

    .line 410
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.market.service.AppDownloadInstallService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appId"

    .line 412
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packageName"

    .line 413
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "senderPackageName"

    .line 414
    iget-object p2, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ref"

    .line 415
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_3

    .line 417
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 418
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 420
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

    .line 421
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 422
    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string p1, "extra_query_params"

    .line 424
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "MarketManager"

    .line 426
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 430
    iput p1, v0, Lcom/market/sdk/DownloadResponse;->code:I

    return-object v0
.end method

.method public startUserAgreementActivity(Landroid/app/Activity;I)Z
    .locals 5

    const/4 v0, 0x1

    .line 321
    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 325
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v4, "com.xiaomi.market.ui.UserAgreementActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateApplicationEnableState()V
    .locals 3

    .line 436
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

    .line 437
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

    .line 439
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
