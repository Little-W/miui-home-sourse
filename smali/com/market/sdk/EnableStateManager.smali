.class Lcom/market/sdk/EnableStateManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/EnableStateManager$EnableStateUpdateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_ENABLE_STATE:Ljava/lang/String; = "com.xiaomi.market.sdk.EnableUpdateReceiver"

.field private static mEnableSettingPath:Ljava/lang/String;

.field private static sDefaultDisableRegionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sDefaultEnableRegionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sEnableStateControlledPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/market/sdk/EnableStateManager;

.field private static sShouldKeepStatePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCloudDisableSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCloudEnableSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private volatile receiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultDisableRegionList:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/market/sdk/EnableStateManager;->sShouldKeepStatePackages:Ljava/util/List;

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v1, "com.xiaomi.mipicks"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v2, "com.miui.virtualsim"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v3, "com.xiaomi.glgm"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v3, "com.mi.globalTrendNews"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v3, "com.mipay.wallet.in"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v4, "com.micredit.in"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sShouldKeepStatePackages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v5, "IN"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "RU"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "ID"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "V10.2.0.0"

    const-string v8, "8.9.30"

    invoke-static {v7, v8}, Lcom/market/sdk/utils/VersionConstraint;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/VersionConstraint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/market/sdk/utils/VersionConstraint;->isAfter()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "V10.3.0.0"

    const-string v8, "9.3.7"

    invoke-static {v7, v8}, Lcom/market/sdk/utils/VersionConstraint;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/VersionConstraint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/market/sdk/utils/VersionConstraint;->isAfter()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ES"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/market/sdk/EnableStateManager;

    invoke-direct {v0}, Lcom/market/sdk/EnableStateManager;-><init>()V

    sput-object v0, Lcom/market/sdk/EnableStateManager;->sInstance:Lcom/market/sdk/EnableStateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newConconrrentHashMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newConconrrentHashMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/EnableStateManager;->mCloudDisableSettings:Ljava/util/Map;

    invoke-static {}, Lcom/market/sdk/MarketManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/package_display_region_settings"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/market/sdk/EnableStateManager;->mEnableSettingPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/market/sdk/EnableStateManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/market/sdk/EnableStateManager;->scheduleEnableStateUpdateReceiver(J)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/market/sdk/EnableStateManager;->mEnableSettingPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market/sdk/EnableStateManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->updateApplicationEnableStateInner(Z)V

    return-void
.end method

.method private getDisableRegions(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/market/sdk/EnableStateManager;->mCloudDisableSettings:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sget-object p0, Lcom/market/sdk/EnableStateManager;->sDefaultDisableRegionList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string p0, "disable_regions"

    invoke-static {p1, p0}, Lcom/market/sdk/utils/Utils;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method private getEnableSettings(Ljava/lang/String;Z)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/market/sdk/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCloudEnableSettings "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "MarketManager"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " defaultRegions "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "enable_regions"

    invoke-static {p1, p0}, Lcom/market/sdk/utils/Utils;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " apkPresetRegions "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/market/sdk/EnableStateManager;->sShouldKeepStatePackages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/market/sdk/utils/Region;->getRegion()Ljava/lang/String;

    move-result-object p0

    const-string v3, "ES"

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasEverEnabled_"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v6, v5, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {p0, v4, v6}, Lcom/market/sdk/utils/PrefUtils;->getStringSet(Ljava/lang/String;Ljava/util/Set;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldKeep: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n is "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " enbale "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/market/sdk/utils/PkgUtils;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/market/sdk/utils/PkgUtils;->isPackageEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/market/sdk/utils/Region;->getRegion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/market/sdk/utils/Region;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {p0, v0, p1}, Lcom/market/sdk/utils/PrefUtils;->setStringSet(Ljava/lang/String;Ljava/util/Set;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)V

    :cond_5
    return-object v0
.end method

.method public static getManager()Lcom/market/sdk/EnableStateManager;
    .locals 1

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sInstance:Lcom/market/sdk/EnableStateManager;

    return-object v0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private registerReceiverIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/market/sdk/EnableStateManager;->receiverRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market/sdk/EnableStateManager;->receiverRegistered:Z

    new-instance v0, Lcom/market/sdk/EnableStateManager$1;

    invoke-direct {v0, p0}, Lcom/market/sdk/EnableStateManager$1;-><init>(Lcom/market/sdk/EnableStateManager;)V

    invoke-virtual {v0}, Lcom/market/sdk/EnableStateManager$1;->start()V

    return-void
.end method

.method private scheduleEnableStateUpdateReceiver(J)V
    .locals 4

    iget-object v0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.market.sdk.EnableUpdateReceiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private tryDisablePkg(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private tryEnablePkg(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MarketManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private tryUpdateCloudSettings()V
    .locals 1

    new-instance v0, Lcom/market/sdk/EnableStateManager$2;

    invoke-direct {v0, p0}, Lcom/market/sdk/EnableStateManager$2;-><init>(Lcom/market/sdk/EnableStateManager;)V

    invoke-virtual {v0}, Lcom/market/sdk/EnableStateManager$2;->invokeInNewThread()V

    return-void
.end method

.method private updateApplicationEnableStateInner(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/market/sdk/EnableStateManager;->updateCloudConfigFromFile()V

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/market/sdk/EnableStateManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/market/sdk/EnableStateManager;->updateEnableState(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/market/sdk/EnableStateManager;->tryUpdateCloudSettings()V

    return-void
.end method

.method private updateCloudConfigFromFile()V
    .locals 10

    iget-object v0, p0, Lcom/market/sdk/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/market/sdk/EnableStateManager;->mCloudDisableSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/market/sdk/EnableStateManager;->mEnableSettingPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "enable_list"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    move v8, v6

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/market/sdk/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v5, "disable_list"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/market/sdk/EnableStateManager;->mCloudDisableSettings:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_4
    :try_start_2
    const-string v0, "MarketManager"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_5
    invoke-static {v1}, Lcom/market/sdk/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p0

    invoke-static {v1}, Lcom/market/sdk/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method private updateEnableState(Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "MarketManager"

    :try_start_0
    const-string v1, "ro.miui.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "all"

    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->getDisableRegions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, " in "

    const-string v6, "lastRegion"

    const/4 v7, 0x0

    if-nez v4, :cond_2

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disbale "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->tryEnablePkg(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->tryDisablePkg(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    new-array v4, v7, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v6, v3, v4}, Lcom/market/sdk/utils/PrefUtils;->getString(Ljava/lang/String;Ljava/lang/String;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move p2, v7

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/market/sdk/EnableStateManager;->getEnableSettings(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->tryDisablePkg(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->tryEnablePkg(Ljava/lang/String;)V

    :goto_2
    new-array p0, v7, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v6, v1, p0}, Lcom/market/sdk/utils/PrefUtils;->setString(Ljava/lang/String;Ljava/lang/String;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public updateApplicationEnableState(Z)V
    .locals 1

    invoke-static {}, Lcom/market/sdk/utils/Utils;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->updateApplicationEnableStateInner(Z)V

    invoke-direct {p0}, Lcom/market/sdk/EnableStateManager;->registerReceiverIfNeeded()V

    :cond_1
    :goto_0
    return-void
.end method
