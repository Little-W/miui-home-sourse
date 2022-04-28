.class public Lcom/miui/privacy/SettingObserver;
.super Landroid/database/ContentObserver;
.source "SettingObserver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static updateCustomDataReporting(Landroid/content/Context;Z)V
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->setOpenCustomDataReport(Z)V

    .line 34
    invoke-static {p1}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->setAnalyticsCollectionEnabled(Z)V

    .line 35
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 36
    invoke-static {}, Lcom/miui/privacy/firebase/FirebaseCrashUtils;->getInstance()Lcom/miui/privacy/firebase/FirebaseCrashUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/privacy/firebase/FirebaseCrashUtils;->setIsAllowReportLog(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 26
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 27
    sget-object p1, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "upload_log_pref"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 29
    sget-object v0, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v1}, Lcom/miui/privacy/SettingObserver;->updateCustomDataReporting(Landroid/content/Context;Z)V

    return-void
.end method
