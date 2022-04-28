.class public Lcom/xiaomi/analytics/PolicyConfiguration;
.super Ljava/lang/Object;
.source "PolicyConfiguration.java"


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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyPrivacy(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->mPrivacy:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 30
    sget-object v1, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->NO:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    if-ne v0, v1, :cond_0

    const-string v0, "privacy_policy"

    const-string v1, "privacy_no"

    .line 31
    invoke-interface {p1, v0, v1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "privacy_policy"

    const-string v1, "privacy_user"

    .line 33
    invoke-interface {p1, v0, v1}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/PolicyConfiguration;->applyPrivacy(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    :cond_0
    return-void
.end method

.method public setPrivacy(Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;)Lcom/xiaomi/analytics/PolicyConfiguration;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->mPrivacy:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    return-object p0
.end method
