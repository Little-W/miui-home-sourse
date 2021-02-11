.class final Lmiuix/animation/base/AnimConfigLink$5;
.super Ljava/lang/Object;
.source "AnimConfigLink.java"

# interfaces
.implements Lmiuix/animation/base/AnimConfigLink$IMapOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/base/AnimConfigLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiuix/animation/base/AnimConfigLink$IMapOperation<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .line 111
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/base/AnimConfigLink$5;->process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
