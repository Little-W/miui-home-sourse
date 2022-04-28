.class public final Lio/branch/search/r4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/r4$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/r4$a;

.field public static final b:J


# instance fields
.field public final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/r4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/r4$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/r4;->Companion:Lio/branch/search/r4$a;

    const v0, 0x5265c00

    int-to-long v0, v0

    sput-wide v0, Lio/branch/search/r4;->b:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/branch/search/r4;->a:J

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
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long v0, p1

    sget-wide v2, Lio/branch/search/r4;->b:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(I)J
    .locals 4

    invoke-virtual {p0}, Lio/branch/search/r4;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lio/branch/search/r4;->a(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lio/branch/search/r4;->a:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()Ljava/text/SimpleDateFormat;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lio/branch/search/r4;->b()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lio/branch/search/r4;->b(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSimpleDateFormat().fo\u2026getNdaysAgoMillis(days)))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
