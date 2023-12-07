.class public Lcom/xiaomi/analytics/internal/util/SysUtils;
.super Ljava/lang/Object;


# static fields
.field private static IMEI:Ljava/lang/String;


# direct methods
.method public static deleteDeviceIdInSpFile(Landroid/content/Context;)V
    .locals 3

    const-string v0, "has_deleted_id"

    :try_start_0
    const-string v1, "_m_rec"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "imei"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

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

    invoke-static {v0, v1, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getAndroidVersionNumber()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.build.version.sdk"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.build.product"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHashedIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/SysUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/xiaomi/analytics/internal/util/SysUtils;->IMEI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

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

    invoke-static {v0, v1, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object p0, Lcom/xiaomi/analytics/internal/util/SysUtils;->IMEI:Ljava/lang/String;

    return-object p0
.end method

.method public static getMIUIBuild()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isAlphaBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/util/MIUI;->isStableBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "S"

    return-object v0

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

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "ro.miui.region"

    invoke-static {v1, v0}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "ro.product.locale.region"

    invoke-static {v1, v0}, Lcom/xiaomi/analytics/internal/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SysUtils"

    const-string v3, "getRegion Exception: "

    invoke-static {v2, v3, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
