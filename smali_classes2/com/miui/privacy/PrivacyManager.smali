.class public Lcom/miui/privacy/PrivacyManager;
.super Ljava/lang/Object;
.source "PrivacyManager.java"


# static fields
.field public static application:Landroid/app/Application;


# direct methods
.method public static init(Landroid/app/Application;)V
    .locals 0

    .line 24
    sput-object p0, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    .line 25
    invoke-static {}, Lcom/miui/privacy/PrivacyManager;->reportPrivacyData()V

    .line 26
    invoke-static {}, Lcom/miui/privacy/PrivacyManager;->initFirebase()V

    .line 27
    invoke-static {}, Lcom/miui/privacy/PrivacyManager;->registerCustomData()V

    return-void
.end method

.method private static initFirebase()V
    .locals 3

    .line 62
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    sget-object v0, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 67
    :goto_0
    sget-object v0, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    const-string v1, "ro.miui.region"

    const-string v2, ""

    .line 68
    invoke-static {v1, v2}, Lcom/miui/privacy/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->initSdk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static registerCustomData()V
    .locals 4

    .line 31
    sget-object v0, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "upload_log_pref"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/miui/privacy/SettingObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Lcom/miui/privacy/SettingObserver;-><init>(Landroid/os/Handler;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    sget-object v0, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "upload_log_pref"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 35
    sget-object v1, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v1, v2}, Lcom/miui/privacy/SettingObserver;->updateCustomDataReporting(Landroid/content/Context;Z)V

    return-void
.end method

.method private static reportPrivacyData()V
    .locals 3

    .line 39
    invoke-static {}, Lcom/miui/privacy/utils/PrivacyPreferenceUtils;->getInstance()Lcom/miui/privacy/utils/PrivacyPreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/privacy/utils/PrivacyPreferenceUtils;->isPrivacyDataReported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    invoke-static {v0}, Lcom/miui/privacy/http/CommercialHttpUtils$Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    const-string v1, "5_2"

    new-instance v2, Lcom/miui/privacy/PrivacyManager$1;

    invoke-direct {v2}, Lcom/miui/privacy/PrivacyManager$1;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$Factory;->create(Landroid/content/Context;Ljava/lang/String;Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/miui/privacy/reportId/AsyncFetchFirebaseId;->get()V

    :cond_0
    return-void
.end method
