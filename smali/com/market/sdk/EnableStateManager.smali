.class Lcom/market/sdk/EnableStateManager;
.super Ljava/lang/Object;
.source "EnableStateManager.java"


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
    .locals 6

    .line 40
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultDisableRegionList:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/market/sdk/EnableStateManager;->sShouldKeepStatePackages:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v1, "com.xiaomi.mipicks"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v1, "com.miui.virtualsim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v1, "com.xiaomi.glgm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v1, "com.mi.globalTrendNews"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v1, "com.mipay.wallet.in"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sEnableStateControlledPkgList:Ljava/util/List;

    const-string v1, "com.micredit.in"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sShouldKeepStatePackages:Ljava/util/List;

    const-string v1, "com.xiaomi.mipicks"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "IN"

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "RU"

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ID"

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "V10.2.0.0"

    const-string v2, "8.9.30"

    .line 64
    invoke-static {v1, v2}, Lcom/market/sdk/utils/VersionConstraint;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/VersionConstraint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/utils/VersionConstraint;->isAfter()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "V10.3.0.0"

    const-string v2, "9.3.7"

    .line 65
    invoke-static {v1, v2}, Lcom/market/sdk/utils/VersionConstraint;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/VersionConstraint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/utils/VersionConstraint;->isAfter()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ES"

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "ID"

    .line 69
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "IN"

    .line 71
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "IN"

    .line 73
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v4, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    const-string v5, "com.xiaomi.mipicks"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    const-string v4, "com.miui.virtualsim"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    const-string v1, "com.mipay.wallet.in"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    const-string v1, "com.micredit.in"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/market/sdk/EnableStateManager;

    invoke-direct {v0}, Lcom/market/sdk/EnableStateManager;-><init>()V

    sput-object v0, Lcom/market/sdk/EnableStateManager;->sInstance:Lcom/market/sdk/EnableStateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newConconrrentHashMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newConconrrentHashMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/EnableStateManager;->mCloudDisableSettings:Ljava/util/Map;

    .line 85
    invoke-static {}, Lcom/market/sdk/MarketManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/package_display_region_settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/EnableStateManager;->mEnableSettingPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/market/sdk/EnableStateManager;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/market/sdk/EnableStateManager;->scheduleEnableStateUpdateReceiver(J)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/market/sdk/EnableStateManager;->mEnableSettingPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market/sdk/EnableStateManager;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->updateApplicationEnableStateInner(Z)V

    return-void
.end method

.method private getDisableRegions(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
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

    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/market/sdk/EnableStateManager;->mCloudDisableSettings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 215
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 218
    :cond_0
    sget-object v1, Lcom/market/sdk/EnableStateManager;->sDefaultDisableRegionList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v1, "disable_regions"

    .line 223
    invoke-static {p1, v1}, Lcom/market/sdk/utils/Utils;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 225
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method private getEnableSettings(Ljava/lang/String;Z)Ljava/util/Set;
    .locals 5
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

    .line 231
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 233
    iget-object v1, p0, Lcom/market/sdk/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 235
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v1, "MarketManager"

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCloudEnableSettings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object v1, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 241
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v1, "MarketManager"

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " defaultRegions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "enable_regions"

    .line 245
    invoke-static {p1, v1}, Lcom/market/sdk/utils/Utils;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 247
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string v1, "MarketManager"

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " apkPresetRegions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v1, Lcom/market/sdk/EnableStateManager;->sShouldKeepStatePackages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/market/sdk/utils/Region;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ES"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasEverEnabled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v1, v2, v4}, Lcom/market/sdk/utils/PrefUtils;->getStringSet(Ljava/lang/String;Ljava/util/Set;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 254
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string v1, "MarketManager"

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldKeep: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " enbale "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {p1}, Lcom/market/sdk/utils/PkgUtils;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 260
    invoke-static {p1}, Lcom/market/sdk/utils/PkgUtils;->isPackageEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "MarketManager"

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/market/sdk/utils/Region;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lcom/market/sdk/utils/Region;->getRegion()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasEverEnabled_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {p1, v0, p2}, Lcom/market/sdk/utils/PrefUtils;->setStringSet(Ljava/lang/String;Ljava/util/Set;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)V

    :cond_5
    return-object v0
.end method

.method public static getManager()Lcom/market/sdk/EnableStateManager;
    .locals 1

    .line 90
    sget-object v0, Lcom/market/sdk/EnableStateManager;->sInstance:Lcom/market/sdk/EnableStateManager;

    return-object v0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 141
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "MarketManager"

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private registerReceiverIfNeeded()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/market/sdk/EnableStateManager;->receiverRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/market/sdk/EnableStateManager;->receiverRegistered:Z

    .line 106
    new-instance v0, Lcom/market/sdk/EnableStateManager$1;

    invoke-direct {v0, p0}, Lcom/market/sdk/EnableStateManager$1;-><init>(Lcom/market/sdk/EnableStateManager;)V

    .line 116
    invoke-virtual {v0}, Lcom/market/sdk/EnableStateManager$1;->start()V

    return-void
.end method

.method private scheduleEnableStateUpdateReceiver(J)V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.market.sdk.EnableUpdateReceiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x1

    .line 124
    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private tryDisablePkg(Ljava/lang/String;)V
    .locals 3

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 188
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MarketManager"

    .line 192
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private tryEnablePkg(Ljava/lang/String;)V
    .locals 3

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/market/sdk/EnableStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MarketManager"

    .line 206
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private tryUpdateCloudSettings()V
    .locals 1

    .line 318
    new-instance v0, Lcom/market/sdk/EnableStateManager$2;

    invoke-direct {v0, p0}, Lcom/market/sdk/EnableStateManager$2;-><init>(Lcom/market/sdk/EnableStateManager;)V

    .line 336
    invoke-virtual {v0}, Lcom/market/sdk/EnableStateManager$2;->invokeInNewThread()V

    return-void
.end method

.method private updateApplicationEnableStateInner(Z)V
    .locals 3

    .line 129
    invoke-direct {p0}, Lcom/market/sdk/EnableStateManager;->updateCloudConfigFromFile()V

    .line 130
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

    .line 131
    invoke-direct {p0, v1}, Lcom/market/sdk/EnableStateManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-direct {p0, v1, p1}, Lcom/market/sdk/EnableStateManager;->updateEnableState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/market/sdk/EnableStateManager;->tryUpdateCloudSettings()V

    return-void
.end method

.method private updateCloudConfigFromFile()V
    .locals 11

    .line 272
    iget-object v0, p0, Lcom/market/sdk/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 273
    iget-object v0, p0, Lcom/market/sdk/EnableStateManager;->mCloudDisableSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 276
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/market/sdk/EnableStateManager;->mEnableSettingPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 283
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 285
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 287
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "enable_list"

    .line 289
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 291
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    move v8, v6

    .line 292
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 293
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 294
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 296
    :cond_2
    iget-object v5, p0, Lcom/market/sdk/EnableStateManager;->mCloudEnableSettings:Ljava/util/Map;

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v5, "disable_list"

    .line 299
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 301
    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 302
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 303
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 304
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 306
    :cond_4
    iget-object v4, p0, Lcom/market/sdk/EnableStateManager;->mCloudDisableSettings:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_4
    :try_start_2
    const-string v2, "MarketManager"

    .line 310
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    :cond_5
    invoke-static {v1}, Lcom/market/sdk/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_5
    invoke-static {v1}, Lcom/market/sdk/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 314
    throw v0
.end method

.method private updateEnableState(Ljava/lang/String;Z)V
    .locals 6

    :try_start_0
    const-string v0, "ro.miui.region"

    const-string v1, "CN"

    .line 153
    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "all"

    .line 155
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->getDisableRegions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 156
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string p2, "MarketManager"

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disbale "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->tryEnablePkg(Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->tryDisablePkg(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v2, "lastRegion"

    const/4 v3, 0x0

    .line 164
    new-array v5, v4, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {v2, v3, v5}, Lcom/market/sdk/utils/PrefUtils;->getString(Ljava/lang/String;Ljava/lang/String;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move p2, v4

    .line 168
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/market/sdk/EnableStateManager;->getEnableSettings(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object p2

    const-string v2, "MarketManager"

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 173
    :cond_4
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->tryDisablePkg(Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->tryEnablePkg(Ljava/lang/String;)V

    :goto_2
    const-string p1, "lastRegion"

    .line 176
    new-array p2, v4, [Lcom/market/sdk/utils/PrefUtils$PrefFile;

    invoke-static {p1, v0, p2}, Lcom/market/sdk/utils/PrefUtils;->setString(Ljava/lang/String;Ljava/lang/String;[Lcom/market/sdk/utils/PrefUtils$PrefFile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "MarketManager"

    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public updateApplicationEnableState(Z)V
    .locals 1

    .line 94
    invoke-static {}, Lcom/market/sdk/utils/Utils;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/market/sdk/EnableStateManager;->sDefaultEnableRegionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/market/sdk/EnableStateManager;->updateApplicationEnableStateInner(Z)V

    .line 98
    invoke-direct {p0}, Lcom/market/sdk/EnableStateManager;->registerReceiverIfNeeded()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
