.class public Lcom/xiaomi/analytics/internal/util/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# static fields
.field private static IMEI:Ljava/lang/String;


# direct methods
.method public static deleteDeviceIdInSpFile(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "_m_rec"

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "has_deleted_id"

    .line 111
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "imei"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "has_deleted_id"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SysUtils"

    const-string v1, "deleteDeviceIdInSpFile exception"

    .line 116
    invoke-static {v0, v1, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getAndroidVersionNumber()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.build.version.sdk"

    const-string v1, ""

    .line 71
    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.build.product"

    const-string v1, ""

    .line 86
    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHashedIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/SysUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 27
    sget-object v0, Lcom/xiaomi/analytics/internal/util/SysUtils;->IMEI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "phone"

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 30
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/analytics/internal/util/SysUtils;->IMEI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SysUtils"

    const-string v1, "getIMEI failed!"

    .line 32
    invoke-static {v0, v1, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_0
    :goto_0
    sget-object p0, Lcom/xiaomi/analytics/internal/util/SysUtils;->IMEI:Ljava/lang/String;

    return-object p0
.end method

.method public static getMIUIBuild()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isAlphaBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A"

    return-object v0

    .line 77
    :cond_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isStableBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "S"

    return-object v0

    .line 79
    :cond_1
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isDevBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "D"

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public static getMIUIVersion()Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "ro.miui.region"

    const-string v1, ""

    .line 92
    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ro.product.locale.region"

    const-string v1, ""

    .line 94
    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SysUtils"

    const-string v2, "getRegion Exception: "

    .line 98
    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method
