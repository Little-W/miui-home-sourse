.class public Lcom/miui/privacy/track/SensorsAnalyticsCollector;
.super Ljava/lang/Object;
.source "SensorsAnalyticsCollector.java"


# static fields
.field private static clickSearchResultCount:I = 0x0

.field private static openCustomDataReport:Z = true

.field private static sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static initFirebaseSdk(Landroid/content/Context;)V
    .locals 1

    .line 80
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sput-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 82
    new-instance p0, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;

    invoke-direct {p0}, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;-><init>()V

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public static initSdk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IN"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->initFirebaseSdk(Landroid/content/Context;)V

    return-void
.end method

.method public static resetClickSearchResultCount()V
    .locals 1

    const/4 v0, 0x0

    .line 190
    sput v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->clickSearchResultCount:I

    return-void
.end method

.method public static setAnalyticsCollectionEnabled(Z)V
    .locals 1

    .line 237
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static setOpenCustomDataReport(Z)V
    .locals 0

    .line 88
    sput-boolean p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    return-void
.end method

.method public static trackBranchHotItemClick(I)V
    .locals 2

    .line 160
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "location"

    .line 163
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    sget-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "Click_Hotitem"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchHotItemShow(I)V
    .locals 2

    .line 150
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "location"

    .line 153
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    sget-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "Show_Hotitem"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchSearchGuideClose()V
    .locals 3

    .line 124
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Branch_Search_Guide_Close"

    .line 126
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchSearchGuideOpen()V
    .locals 3

    .line 116
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Branch_Search_Guide_Open"

    .line 118
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchSearchGuideShow()V
    .locals 3

    .line 108
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Branch_Search_Guide_Show"

    .line 110
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchSearchResultClick(I)V
    .locals 2

    .line 179
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 180
    sget v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->clickSearchResultCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->clickSearchResultCount:I

    .line 181
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 183
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    sget-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "Click_Branch_Search_Result"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchSearchResultShow()V
    .locals 3

    .line 170
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    sget-object v1, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Show_Branch_Result"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchTermServiceAlertOk()V
    .locals 3

    .line 100
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Branch_TS_Alert_OK"

    .line 102
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackEnterDrawer()V
    .locals 3

    .line 142
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Enter_Drawer"

    .line 144
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackGetappsClick()V
    .locals 3

    .line 229
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Click_Getapps"

    .line 231
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackGpOrGetApps(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.android.vending"

    .line 213
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackPlayStoreClick()V

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaomi.mipicks"

    .line 215
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 216
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackGetappsClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static trackLocalAppsClick(I)V
    .locals 2

    .line 132
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "location"

    .line 135
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    sget-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "Local_Apps_Click"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackNewFeatureTagShow()V
    .locals 3

    .line 92
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "New_Feature_Tag_Show"

    .line 94
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackPlayStoreClick()V
    .locals 3

    .line 205
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Click_Play_Store"

    .line 207
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackRecommendApp()V
    .locals 3

    .line 221
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Sug_App_Imp"

    .line 223
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackSwitchState(Z)V
    .locals 2

    .line 194
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 197
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    sget-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "Set_Switch"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
