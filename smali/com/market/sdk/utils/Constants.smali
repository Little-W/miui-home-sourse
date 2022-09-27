.class public Lcom/market/sdk/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/utils/Constants$UpdateMethod;,
        Lcom/market/sdk/utils/Constants$Update;,
        Lcom/market/sdk/utils/Constants$BaseColumns;
    }
.end annotation


# static fields
.field public static final APK_HASH:Ljava/lang/String; = "apkHash"

.field public static final APK_SIZE:Ljava/lang/String; = "apkSize"

.field public static final APK_URL:Ljava/lang/String; = "apk"

.field public static final DIFF_HASH:Ljava/lang/String; = "diffFileHash"

.field public static final DIFF_SIZE:Ljava/lang/String; = "diffFileSize"

.field public static final DIFF_URL:Ljava/lang/String; = "diffFile"

.field public static final DISCOVER_PKG_NAME:Ljava/lang/String; = "com.xiaomi.discover"

.field public static final FITNESS:Ljava/lang/String; = "fitness"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final JSON_AB_TEST_IDENTIFIER:Ljava/lang/String; = "ext_abTestIdentifier"

.field public static final JSON_ANDROID_ID:Ljava/lang/String; = "androidId"

.field public static final JSON_CLIENT_ID:Ljava/lang/String; = "clientId"

.field public static final JSON_COUNTRY:Ljava/lang/String; = "co"

.field public static final JSON_CPU_ARCH:Ljava/lang/String; = "cpuArchitecture"

.field public static final JSON_DEBUG:Ljava/lang/String; = "debug"

.field public static final JSON_DENSITY:Ljava/lang/String; = "density"

.field public static final JSON_DEVICE:Ljava/lang/String; = "device"

.field public static final JSON_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final JSON_FEATURE:Ljava/lang/String; = "feature"

.field public static final JSON_FILTER_INFO:Ljava/lang/String; = "info"

.field public static final JSON_GLES_VERSION:Ljava/lang/String; = "glEsVersion"

.field public static final JSON_GL_EXTENSION:Ljava/lang/String; = "glExtension"

.field public static final JSON_IMEI_MD5:Ljava/lang/String; = "imei"

.field public static final JSON_LANGUAGE:Ljava/lang/String; = "la"

.field public static final JSON_LIBRARY:Ljava/lang/String; = "library"

.field public static final JSON_MIUI_BIG_VERSION_CODE:Ljava/lang/String; = "miuiBigVersionCode"

.field public static final JSON_MIUI_BIG_VERSION_NAME:Ljava/lang/String; = "miuiBigVersionName"

.field public static final JSON_MODEL:Ljava/lang/String; = "model"

.field public static final JSON_OLD_APK_HASH:Ljava/lang/String; = "apkHash"

.field public static final JSON_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final JSON_REGION:Ljava/lang/String; = "lo"

.field public static final JSON_RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final JSON_SCREEN_SIZE:Ljava/lang/String; = "screenSize"

.field public static final JSON_SDK:Ljava/lang/String; = "sdk"

.field public static final JSON_SDK_VERSION:Ljava/lang/String; = "sdk"

.field public static final JSON_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final JSON_SYSTEM_RELEASE:Ljava/lang/String; = "release"

.field public static final JSON_SYSTEM_VERSION:Ljava/lang/String; = "version"

.field public static final JSON_TOUCH_SCREEN:Ljava/lang/String; = "touchScreen"

.field public static final JSON_VERSION:Ljava/lang/String; = "os"

.field public static final JSON_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final JSON_XIAOMI_SDK_VERSION:Ljava/lang/String; = "xiaomiSDKVersion"

.field public static final MARKET_PKG_NAME:Ljava/lang/String; = "com.xiaomi.market"

.field public static final MATCH_LANGUAGE:Ljava/lang/String; = "matchLanguage"

.field public static final MIPICKS_PKG_NAME:Ljava/lang/String; = "com.xiaomi.mipicks"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SPLIT_PATTERN:Ljava/lang/String; = ","

.field public static final UPDATE_LOG:Ljava/lang/String; = "updateLog"

.field public static UPDATE_URL:Ljava/lang/String; = null

.field public static volatile URL_BASE:Ljava/lang/String; = null

.field public static final VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final VERSION_NAME:Ljava/lang/String; = "versionName"

.field private static volatile sServer:Lcom/market/sdk/ServerType;

.field private static volatile sUseInternationalUrl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/market/sdk/utils/Client;->isInternationalMiui()Z

    move-result v0

    sput-boolean v0, Lcom/market/sdk/utils/Constants;->sUseInternationalUrl:Z

    .line 20
    sget-object v0, Lcom/market/sdk/ServerType;->PRODUCT:Lcom/market/sdk/ServerType;

    sput-object v0, Lcom/market/sdk/utils/Constants;->sServer:Lcom/market/sdk/ServerType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configURL()V
    .locals 2

    .line 33
    sget-boolean v0, Lcom/market/sdk/utils/Constants;->sUseInternationalUrl:Z

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/market/sdk/utils/Constants;->sServer:Lcom/market/sdk/ServerType;

    invoke-virtual {v0}, Lcom/market/sdk/ServerType;->getGlobalBaseUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/utils/Constants;->URL_BASE:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lcom/market/sdk/utils/Constants;->sServer:Lcom/market/sdk/ServerType;

    invoke-virtual {v0}, Lcom/market/sdk/ServerType;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/utils/Constants;->URL_BASE:Ljava/lang/String;

    .line 38
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/market/sdk/utils/Constants;->URL_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "updateself"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/utils/Constants;->UPDATE_URL:Ljava/lang/String;

    return-void
.end method

.method public static setServerType(Lcom/market/sdk/ServerType;)V
    .locals 0

    .line 28
    sput-object p0, Lcom/market/sdk/utils/Constants;->sServer:Lcom/market/sdk/ServerType;

    .line 29
    invoke-static {}, Lcom/market/sdk/utils/Constants;->configURL()V

    return-void
.end method

.method public static setUseInternalProductUrl(Z)V
    .locals 0

    .line 23
    sput-boolean p0, Lcom/market/sdk/utils/Constants;->sUseInternationalUrl:Z

    .line 24
    invoke-static {}, Lcom/market/sdk/utils/Constants;->configURL()V

    return-void
.end method
