.class public Lcom/miui/privacy/http/CommercialHttpUtils;
.super Ljava/lang/Object;
.source "CommercialHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/privacy/http/CommercialHttpUtils$Network;
    }
.end annotation


# static fields
.field private static miuiVersion:Ljava/lang/String;

.field private static region:Ljava/lang/String;


# direct methods
.method public static getAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDevelopVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "stable"

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .line 96
    :try_start_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const-string v0, ""

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiRegion()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, "ro.miui.region"

    .line 30
    invoke-static {v1, v0}, Lcom/miui/privacy/http/CommercialHttpUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/privacy/http/CommercialHttpUtils;->region:Ljava/lang/String;

    .line 31
    sget-object v1, Lcom/miui/privacy/http/CommercialHttpUtils;->region:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/privacy/http/CommercialHttpUtils;->region:Ljava/lang/String;

    .line 35
    :cond_0
    sget-object v1, Lcom/miui/privacy/http/CommercialHttpUtils;->region:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getMiuiVersion()Ljava/lang/String;
    .locals 2

    .line 59
    sget-object v0, Lcom/miui/privacy/http/CommercialHttpUtils;->miuiVersion:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "ro.miui.ui.version.name"

    .line 60
    invoke-static {v0, v1}, Lcom/miui/privacy/http/CommercialHttpUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/privacy/http/CommercialHttpUtils;->miuiVersion:Ljava/lang/String;

    .line 63
    :cond_0
    sget-object v0, Lcom/miui/privacy/http/CommercialHttpUtils;->miuiVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getProduct()Ljava/lang/String;
    .locals 1

    .line 105
    :try_start_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const-string v0, ""

    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 46
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 47
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 48
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method
