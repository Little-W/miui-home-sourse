.class Lcom/xiaomi/analytics/BaseLogger$PendingUnit;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/BaseLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingUnit"
.end annotation


# instance fields
.field mAppId:Ljava/lang/String;

.field mConfigKey:Ljava/lang/String;

.field mEvent:Lcom/xiaomi/analytics/LogEvent;

.field mSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mConfigKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mSessionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mEvent:Lcom/xiaomi/analytics/LogEvent;

    iput-object p1, p0, Lcom/xiaomi/analytics/BaseLogger$PendingUnit;->mAppId:Ljava/lang/String;

    return-void
.end method
