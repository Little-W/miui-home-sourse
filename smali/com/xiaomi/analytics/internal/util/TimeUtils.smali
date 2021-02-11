.class public Lcom/xiaomi/analytics/internal/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static HALF_DAY_IN_MS:I = 0x2932e00

.field public static ONE_DAY_IN_MS:I = 0x5265c00

.field public static ONE_HOUR_IN_MS:I = 0x36ee80

.field public static ONE_MINUTE_IN_MS:I = 0xea60

.field public static ONE_SECOND_IN_MS:I = 0x3e8

.field public static ONE_WEEK_IN_MS:I = 0x240c8400


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static expired(JJ)Z
    .locals 2

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
