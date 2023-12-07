.class public Lcom/market/sdk/MarketManager;
.super Ljava/lang/Object;


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

    invoke-static {}, Lcom/market/sdk/MarketManager;->initMarketPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.xiaomi.market.ui.AppDetailActivity"

    iput-object v0, p0, Lcom/market/sdk/MarketManager;->DETAIL_CLASS_NAME:Ljava/lang/String;

    const-string v0, "com.xiaomi.market.data.MarketService"

    iput-object v0, p0, Lcom/market/sdk/MarketManager;->MARKET_SERVICE_CLASS_NAME:Ljava/lang/String;

    const-string v0, "com.xiaomi.market.ui.UserAgreementActivity"

    iput-object v0, p0, Lcom/market/sdk/MarketManager;->MARKET_USER_AGREEMENT_CLASS:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ensureNotUiThread()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t call the method on ui thread"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    iget-object v0, v0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getManager()Lcom/market/sdk/MarketManager;
    .locals 3

    sget-object v0, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/market/sdk/MarketManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/market/sdk/MarketManager;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/market/sdk/MarketManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/market/sdk/MarketManager;->sManager:Lcom/market/sdk/MarketManager;

    return-object v0
.end method

.method public static getMarketPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static initMarketPackageName()Ljava/lang/String;
    .locals 2

    const-string v0, "com.xiaomi.market"

    :try_start_0
    sget-boolean v1, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v0, "com.xiaomi.discover"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public allowConnectToNetwork()Z
    .locals 2

    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/market/sdk/MarketManager$4;

    invoke-direct {v0, p0}, Lcom/market/sdk/MarketManager$4;-><init>(Lcom/market/sdk/MarketManager;)V

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager$4;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public getApkCheckInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
    .locals 1

    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    new-instance v0, Lcom/market/sdk/MarketManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/market/sdk/MarketManager$2;-><init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager$2;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/ApkVerifyInfo;

    return-object p0
.end method

.method public getApkVerifyInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
    .locals 1

    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    new-instance v0, Lcom/market/sdk/MarketManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/market/sdk/MarketManager$1;-><init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager$1;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/ApkVerifyInfo;

    return-object p0
.end method

.method public getAppstoreUserGuide()Lcom/market/sdk/homeguide/AppstoreUserGuide;
    .locals 0

    new-instance p0, Lcom/market/sdk/homeguide/AppstoreUserGuide;

    invoke-direct {p0}, Lcom/market/sdk/homeguide/AppstoreUserGuide;-><init>()V

    return-object p0
.end method

.method public varargs getCategory([Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    new-instance v2, Lcom/market/sdk/MarketManager$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/market/sdk/MarketManager$5;-><init>(Lcom/market/sdk/MarketManager;Lcom/market/sdk/compat/FutureTaskCompat;[Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/market/sdk/MarketManager$5;->invokeAsync()V

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public varargs getCategoryName([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/market/sdk/MarketManager;->ensureNotUiThread()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    new-instance v1, Lcom/market/sdk/MarketManager$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/market/sdk/MarketManager$6;-><init>(Lcom/market/sdk/MarketManager;Lcom/market/sdk/compat/FutureTaskCompat;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/market/sdk/MarketManager$6;->invokeAsync()V

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDesktopFolderConfig(Lcom/market/sdk/IDesktopFolderConfigCallback;)V
    .locals 1

    sget-object v0, Lcom/market/sdk/MarketFeatures;->DESK_RECOMMEND_V3:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/market/sdk/MarketService;->openService(Landroid/content/Context;)Lcom/market/sdk/IMarketService;

    move-result-object p0

    :try_start_0
    new-instance v0, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/market/sdk/DesktopFolderConfigCallbackAdapter;-><init>(Lcom/market/sdk/IDesktopFolderConfigCallback;)V

    invoke-interface {p0, v0}, Lcom/market/sdk/IMarketService;->getDesktopFolderConfig(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "Market service not impl."

    invoke-interface {p1, p0}, Lcom/market/sdk/IDesktopFolderConfigCallback;->onFailed(Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public getDirectMailManager()Lcom/market/sdk/DirectMailManager;
    .locals 0

    invoke-static {}, Lcom/market/sdk/DirectMailManager;->get()Lcom/market/sdk/DirectMailManager;

    move-result-object p0

    return-object p0
.end method

.method public getDiscoverUpdateManager()Lcom/market/sdk/DiscoverUpdateManager;
    .locals 0

    invoke-static {}, Lcom/market/sdk/DiscoverUpdateManager;->get()Lcom/market/sdk/DiscoverUpdateManager;

    move-result-object p0

    return-object p0
.end method

.method public getFloatCardManager()Lcom/market/sdk/FloatCardManager;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/market/sdk/FloatCardManager;->get(Landroid/app/Application;)Lcom/market/sdk/FloatCardManager;

    move-result-object p0

    return-object p0
.end method

.method public getOpenDetailIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "packageName"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ref"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mimarket://details"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance p1, Landroid/content/ComponentName;

    sget-object p2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.xiaomi.market.ui.AppDetailActivity"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method public getSearchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mimarket://search?q="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ref="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.VIEW"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.DEFAULT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p1
.end method

.method public hasFeature(Lcom/market/sdk/MarketFeatures;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/market/sdk/MarketFeatures;->isSupported()Z

    move-result p0

    return p0
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

    new-instance v0, Lcom/market/pm/api/MarketInstaller;

    iget-object p0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/market/pm/api/MarketInstaller;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p6}, Lcom/market/pm/api/MarketInstaller;->setListener(Lcom/market/pm/api/MarketInstallerListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/market/pm/api/MarketInstaller;->installPackage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAppStoreEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled()Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    sget-object p0, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgmentException when get enabled state of appstore : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MarketManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isAppStoreInstalled()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result p0

    return p0
.end method

.method public isAppStoreInstalled(Z)Z
    .locals 2

    iget-object p0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    return v1

    :catch_0
    :cond_2
    return v0
.end method

.method public isInWhiteSetForApkCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/market/sdk/utils/WhiteSetManager;->isInWhiteSetForApkCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/ArrayList;Lcom/market/sdk/DesktopRecommendCallback;)V
    .locals 6
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

    sget-object v0, Lcom/market/sdk/MarketFeatures;->DESK_RECOMMEND_V2:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/market/sdk/MarketService;->openService(Landroid/content/Context;)Lcom/market/sdk/IMarketService;

    move-result-object v0

    :try_start_0
    new-instance v5, Lcom/market/sdk/DesktopRecommendCallbackAdapter;

    invoke-direct {v5, p5}, Lcom/market/sdk/DesktopRecommendCallbackAdapter;-><init>(Lcom/market/sdk/DesktopRecommendCallback;)V

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/market/sdk/IMarketService;->loadDesktopRecommendInfoV2(JLjava/lang/String;Ljava/util/List;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    sget-object v0, Lcom/market/sdk/MarketFeatures;->DESK_RECOMMEND_V3:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->hasFeature(Lcom/market/sdk/MarketFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/market/sdk/DesktopRecommendArgs;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/market/sdk/DesktopRecommendArgs;-><init>(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/market/sdk/MarketService;->openService(Landroid/content/Context;)Lcom/market/sdk/IMarketService;

    move-result-object p0

    :try_start_0
    invoke-virtual {v0}, Lcom/market/sdk/DesktopRecommendArgs;->parcel()Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Lcom/market/sdk/DesktopRecommendCallbackAdapter;

    invoke-direct {p2, p6}, Lcom/market/sdk/DesktopRecommendCallbackAdapter;-><init>(Lcom/market/sdk/DesktopRecommendCallback;)V

    invoke-interface {p0, p1, p2}, Lcom/market/sdk/IMarketService;->loadDesktopRecommendInfoV3(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/market/sdk/MarketManager;->loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/ArrayList;Lcom/market/sdk/DesktopRecommendCallback;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/ImageCallback;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/market/sdk/ImageManager;->loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/ImageCallback;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;IILcom/market/sdk/ImageCallback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/market/sdk/ImageManager;->loadImage(Ljava/lang/String;IILcom/market/sdk/ImageCallback;)V

    return-void
.end method

.method public openSearchActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

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

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public openSearchActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

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

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public recourdStaticsCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/market/sdk/MarketManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/market/sdk/MarketManager$3;-><init>(Lcom/market/sdk/MarketManager;Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v0, Lcom/market/sdk/DownloadResponse;

    invoke-direct {v0}, Lcom/market/sdk/DownloadResponse;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    iput p0, v0, Lcom/market/sdk/DownloadResponse;->code:I

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/market/sdk/utils/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, -0x2

    iput p0, v0, Lcom/market/sdk/DownloadResponse;->code:I

    const-string p0, "install_no_network_description"

    invoke-static {p0}, Lcom/market/sdk/utils/Utils;->getStringResources(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/market/sdk/DownloadResponse;->msg:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.market.service.AppDownloadInstallService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packageName"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "senderPackageName"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ref"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

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

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string p1, "extra_query_params"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MarketManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/market/sdk/MarketManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p0, 0x0

    iput p0, v0, Lcom/market/sdk/DownloadResponse;->code:I

    return-object v0
.end method

.method public startUserAgreementActivity(Landroid/app/Activity;I)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market/sdk/MarketManager;->isAppStoreInstalled(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v3, "com.xiaomi.market.ui.UserAgreementActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateApplicationEnableState()V
    .locals 2

    const-string p0, "MarketManager"

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFirstBoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/market/sdk/utils/Utils;->isFirstBoot()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
