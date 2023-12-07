.class public Lcom/xiaomi/analytics/PolicyConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;
    }
.end annotation


# instance fields
.field private mPrivacy:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyPrivacy(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->mPrivacy:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->NO:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    const-string v1, "privacy_policy"

    if-ne p0, v0, :cond_0

    const-string p0, "privacy_no"

    invoke-interface {p1, v1, p0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "privacy_user"

    invoke-interface {p1, v1, p0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/PolicyConfiguration;->applyPrivacy(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    :cond_0
    return-void
.end method

.method public setPrivacy(Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;)Lcom/xiaomi/analytics/PolicyConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->mPrivacy:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    return-object p0
.end method
