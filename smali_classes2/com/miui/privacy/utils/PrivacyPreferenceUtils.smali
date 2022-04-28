.class public Lcom/miui/privacy/utils/PrivacyPreferenceUtils;
.super Lcom/miui/privacy/utils/BaseSharePreference;
.source "PrivacyPreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/privacy/utils/PrivacyPreferenceUtils$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "PrivacyPreferenceUtils"

    .line 10
    sget-object v1, Lcom/miui/privacy/PrivacyManager;->application:Landroid/app/Application;

    invoke-direct {p0, v0, v1}, Lcom/miui/privacy/utils/BaseSharePreference;-><init>(Ljava/lang/String;Landroid/app/Application;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/privacy/utils/PrivacyPreferenceUtils$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/privacy/utils/PrivacyPreferenceUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/privacy/utils/PrivacyPreferenceUtils;
    .locals 1

    .line 18
    invoke-static {}, Lcom/miui/privacy/utils/PrivacyPreferenceUtils$Holder;->access$100()Lcom/miui/privacy/utils/PrivacyPreferenceUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isPrivacyDataReported()Z
    .locals 2

    const-string v0, "privacy_data_reported"

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/miui/privacy/utils/PrivacyPreferenceUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setPrivacyDataReported(Z)V
    .locals 1

    const-string v0, "privacy_data_reported"

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/miui/privacy/utils/PrivacyPreferenceUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
