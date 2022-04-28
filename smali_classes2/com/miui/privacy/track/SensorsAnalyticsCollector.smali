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

    .line 82
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sput-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 84
    new-instance p0, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;

    invoke-direct {p0}, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;-><init>()V

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public static initSdk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IN"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->initFirebaseSdk(Landroid/content/Context;)V

    return-void
.end method

.method public static resetClickSearchResultCount()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    sput v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->clickSearchResultCount:I

    return-void
.end method

.method public static setAnalyticsCollectionEnabled(Z)V
    .locals 1

    .line 248
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static setOpenCustomDataReport(Z)V
    .locals 0

    .line 90
    sput-boolean p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    return-void
.end method

.method public static trackBranchHotItemClick(I)V
    .locals 2

    .line 162
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "location"

    .line 165
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    sget-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "Click_Hotitem"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchHotItemShow(I)V
    .locals 2

    .line 152
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "location"

    .line 155
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    sget-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "Show_Hotitem"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchSearchGuideClose()V
    .locals 3

    .line 126
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const-string v1, "Branch_Search_Guide_Close"

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchSearchGuideOpen()V
    .locals 3

    .line 118
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const-string v1, "Branch_Search_Guide_Open"

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchSearchGuideShow()V
    .locals 3

    .line 110
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const-string v1, "Branch_Search_Guide_Show"

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchSearchResultClick(I)V
    .locals 2

    .line 181
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 182
    sget v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->clickSearchResultCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->clickSearchResultCount:I

    .line 183
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    .line 185
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    sget-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "Click_Branch_Search_Result"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchSearchResultShow()V
    .locals 3

    .line 172
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    sget-object v1, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Show_Branch_Result"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackBranchTermServiceAlertOk()V
    .locals 3

    .line 102
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const-string v1, "Branch_TS_Alert_OK"

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackEnterDrawer()V
    .locals 3

    .line 144
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const-string v1, "Enter_Drawer"

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackGetappsClick()V
    .locals 3

    .line 217
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const-string v1, "Click_Getapps"

    const/4 v2, 0x0

    .line 219
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackLocalAppsClick(I)V
    .locals 2

    .line 134
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "location"

    .line 137
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    sget-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "Local_Apps_Click"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackNewFeatureTagShow()V
    .locals 3

    .line 94
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const-string v1, "New_Feature_Tag_Show"

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackPlayStoreClick()V
    .locals 3

    .line 209
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const-string v1, "Click_Play_Store"

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static trackSwitchState(ZZZ)V
    .locals 2

    .line 196
    sget-boolean v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->openCustomDataReport:Z

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "drawer_is_open"

    .line 199
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "branch_is_open"

    .line 200
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "quick_search_is_open"

    .line 201
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    sget-object p0, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->sFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string p1, "Set_Switch"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
