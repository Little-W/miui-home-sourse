.class public Lcom/xiaomi/analytics/internal/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final API_VER:Lcom/xiaomi/analytics/internal/Version;

.field public static final CONNECT_TIME_OUT_MILLIS:I

.field public static final MIN_CORE_VER:Lcom/xiaomi/analytics/internal/Version;

.field public static final READ_TIME_OUT_MILLIS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/analytics/internal/Version;

    const-string v1, "1.9.3"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/Constants;->API_VER:Lcom/xiaomi/analytics/internal/Version;

    new-instance v0, Lcom/xiaomi/analytics/internal/Version;

    const-string v1, "1.3.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/Constants;->MIN_CORE_VER:Lcom/xiaomi/analytics/internal/Version;

    sget v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_SECOND_IN_MS:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/xiaomi/analytics/internal/Constants;->CONNECT_TIME_OUT_MILLIS:I

    sget v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_MINUTE_IN_MS:I

    sput v0, Lcom/xiaomi/analytics/internal/Constants;->READ_TIME_OUT_MILLIS:I

    return-void
.end method
