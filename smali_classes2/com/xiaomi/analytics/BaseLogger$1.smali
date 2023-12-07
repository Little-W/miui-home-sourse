.class final Lcom/xiaomi/analytics/BaseLogger$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/BaseLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkCorePrepared(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/analytics/BaseLogger;->access$002(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    invoke-static {}, Lcom/xiaomi/analytics/BaseLogger;->access$100()V

    return-void
.end method
