.class public Lcom/market/sdk/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field protected static final BYTES_IN_KILO:I = 0x3e8

.field protected static final BYTES_IN_MEGA:I = 0xf4240

.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "MarketSdkUtils"

.field private static volatile isMiMarketExists:Lcom/market/sdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market/sdk/Singleton<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static marketPkgName:Lcom/market/sdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market/sdk/Singleton<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/com.xiaomi.market.sdk/sdk_debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/market/sdk/utils/Utils;->DEBUG:Z

    .line 30
    new-instance v0, Lcom/market/sdk/utils/Utils$1;

    invoke-direct {v0}, Lcom/market/sdk/utils/Utils$1;-><init>()V

    sput-object v0, Lcom/market/sdk/utils/Utils;->marketPkgName:Lcom/market/sdk/Singleton;

    .line 41
    new-instance v0, Lcom/market/sdk/utils/Utils$2;

    invoke-direct {v0}, Lcom/market/sdk/utils/Utils$2;-><init>()V

    sput-object v0, Lcom/market/sdk/utils/Utils;->isMiMarketExists:Lcom/market/sdk/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/market/sdk/Singleton;
    .locals 1

    .line 26
    sget-object v0, Lcom/market/sdk/utils/Utils;->marketPkgName:Lcom/market/sdk/Singleton;

    return-object v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 186
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MarketManager"

    .line 188
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static getByteString(JLandroid/content/Context;)Ljava/lang/String;
    .locals 6

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-gez p2, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const-wide/32 v0, 0xf4240

    cmp-long p2, p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p2, :cond_2

    const-string p2, "%.1f"

    .line 96
    new-array v4, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    mul-double/2addr p0, v0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%1$sKB"

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x3e8

    cmp-long p2, p0, v4

    if-lez p2, :cond_3

    const-string p2, "%.1f"

    .line 99
    new-array v4, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    mul-double/2addr p0, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%1$sKB"

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%1$sMB"

    .line 105
    :goto_0
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMarketPackageName()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/market/sdk/utils/Utils;->marketPkgName:Lcom/market/sdk/Singleton;

    invoke-virtual {v0}, Lcom/market/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 168
    :try_start_0
    invoke-static {}, Lcom/market/sdk/MarketManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "array"

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "MarketManager"

    .line 173
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringResources(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 155
    :try_start_0
    invoke-static {}, Lcom/market/sdk/MarketManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    .line 157
    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 158
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "MarketManager"

    .line 160
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasExternalStorage(Z)Z
    .locals 3

    .line 137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "mounted_ro"

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 148
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFirstBoot()Z
    .locals 2

    .line 210
    :try_start_0
    invoke-static {}, Lcom/market/sdk/compat/ActivityThreadCompat;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MarketManager"

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isInternationalBuild()Z
    .locals 2

    .line 201
    :try_start_0
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MarketManager"

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isMiuiMarketExisted(Landroid/content/Context;)Z
    .locals 0

    .line 68
    sget-object p0, Lcom/market/sdk/utils/Utils;->isMiMarketExists:Lcom/market/sdk/Singleton;

    invoke-virtual {p0}, Lcom/market/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isMiuiPad()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 73
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    .line 74
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 75
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.build.characteristics"

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "tablet"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "MarketSdkUtils"

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isMobileConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity"

    .line 124
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 125
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isScreenOff()Z
    .locals 2

    .line 179
    invoke-static {}, Lcom/market/sdk/MarketManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 180
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity"

    .line 113
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 114
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 116
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static isXSpace()Z
    .locals 4

    .line 194
    invoke-static {}, Lcom/market/sdk/MarketManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "second_user_id"

    sget v2, Lcom/market/sdk/compat/UserHandleCompat;->USER_CURRENT:I

    sget v3, Lcom/market/sdk/compat/UserHandleCompat;->USER_OWNER:I

    invoke-static {v0, v1, v2, v3}, Lcom/market/sdk/compat/SettingsCompat;->getSecureIntForUser(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    .line 196
    invoke-static {}, Lcom/market/sdk/compat/UserHandleCompat;->myUserId()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
