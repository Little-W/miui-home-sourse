.class public Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/model/Settings;


# instance fields
.field public final appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

.field public final cacheDuration:I

.field public final expiresAtMillis:J

.field public final featuresData:Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

.field public final sessionData:Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

.field public final settingsVersion:I


# direct methods
.method public constructor <init>(JLcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->expiresAtMillis:J

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->sessionData:Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->featuresData:Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    iput p6, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->settingsVersion:I

    iput p7, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->cacheDuration:I

    return-void
.end method


# virtual methods
.method public getAppSettingsData()Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    return-object p0
.end method

.method public getExpiresAtMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->expiresAtMillis:J

    return-wide v0
.end method

.method public getFeaturesData()Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->featuresData:Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    return-object p0
.end method

.method public getSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->sessionData:Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    return-object p0
.end method

.method public isExpired(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->expiresAtMillis:J

    cmp-long p0, v0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
