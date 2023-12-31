.class public final Lio/branch/search/d5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/d5$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/d5$a;

.field public static final b:J


# instance fields
.field public final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/d5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/d5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/d5;->Companion:Lio/branch/search/d5$a;

    const v0, 0x5265c00

    int-to-long v0, v0

    sput-wide v0, Lio/branch/search/d5;->b:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/branch/search/d5;->a:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)J
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-long p0, p0

    sget-wide v0, Lio/branch/search/d5;->b:J

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public final b(I)J
    .locals 4

    invoke-virtual {p0}, Lio/branch/search/d5;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lio/branch/search/d5;->a(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide p0, p0, Lio/branch/search/d5;->a:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final b()Ljava/text/SimpleDateFormat;
    .locals 1

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lio/branch/search/d5;->b()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lio/branch/search/d5;->b(I)J

    move-result-wide p0

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getSimpleDateFormat().fo\u2026getNdaysAgoMillis(days)))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
