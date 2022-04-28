.class public Lcom/mi/globallauncher/config/CommercialParamUtil;
.super Ljava/lang/Object;
.source "CommercialParamUtil.java"


# static fields
.field private static final ANDROID_VERSION:Ljava/lang/String; = "os_version"

.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final APP_ID_VALUE:Ljava/lang/String; = "GLOBAL_MIUI_HOME"

.field private static final CIDS:Ljava/lang/String; = "cids"

.field private static final CIDS_VALUE:Ljava/lang/String; = "branch_open,quick_search_open,show_new_feature,branch_device_enable,branch_result_page_style,getapps_download_function"

.field private static final DECODE_SECRET_KEY:Ljava/lang/String; = "1a142cb487bcb06f"

.field private static final DEVELOP_VERSION:Ljava/lang/String; = "t"

.field private static final DEVICE_CODE:Ljava/lang/String; = "dc"

.field private static final DEVICE_NAME:Ljava/lang/String; = "dm"

.field private static final ENCODE_SECRET_KEY:Ljava/lang/String; = "4fd450ec3389b623d119a62b5c574ee7"

.field private static final LANGUAGE:Ljava/lang/String; = "l"

.field private static final MODEL:Ljava/lang/String; = "d"

.field private static final PKG:Ljava/lang/String; = "pkg"

.field private static final REGION:Ljava/lang/String; = "r"

.field private static final SIGNATURE:Ljava/lang/String; = "sign"

.field private static final STATIC_PARAMS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final VERSION_CODE:Ljava/lang/String; = "version_code"

.field private static final VERSION_NAME:Ljava/lang/String; = "version_name"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    .line 87
    sget-object v0, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    const-string v1, "os_version"

    invoke-static {}, Lcom/miui/privacy/http/CommercialHttpUtils;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    const-string v1, "d"

    invoke-static {}, Lcom/miui/privacy/http/CommercialHttpUtils;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    const-string v1, "dc"

    invoke-static {}, Lcom/miui/privacy/http/CommercialHttpUtils;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    const-string v1, "dm"

    invoke-static {}, Lcom/miui/privacy/http/CommercialHttpUtils;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    const-string v1, "t"

    invoke-static {}, Lcom/miui/privacy/http/CommercialHttpUtils;->getDevelopVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 70
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static getCloudConfigParam(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 96
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 99
    :cond_0
    sget-object v0, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    const-string v1, "r"

    invoke-static {}, Lcom/miui/privacy/http/CommercialHttpUtils;->getMiuiRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    const-string v1, "l"

    invoke-static {}, Lcom/miui/privacy/http/CommercialHttpUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/globallauncher/manager/BranchImplement;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ZCLZCL"

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCloudConfigParam: pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    sget-object v1, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    const-string v2, "pkg"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/mi/globallauncher/config/CommercialParamUtil;->STATIC_PARAMS:Ljava/util/HashMap;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "app_id"

    const-string v1, "GLOBAL_MIUI_HOME"

    .line 111
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cids"

    const-string v1, "branch_open,quick_search_open,show_new_feature,branch_device_enable,branch_result_page_style,getapps_download_function"

    .line 112
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sign"

    .line 114
    invoke-static {p0}, Lcom/mi/globallauncher/config/CommercialParamUtil;->getSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "okhttp"

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    .line 75
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 76
    invoke-static {p0}, Lcom/mi/globallauncher/config/CommercialParamUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v0, "%1$032x"

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getSign(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lcom/mi/globallauncher/config/CommercialParamUtil;->getSortMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "&"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "&key="

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "4fd450ec3389b623d119a62b5c574ee7"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/mi/globallauncher/config/CommercialParamUtil;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSortMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 62
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "map must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
