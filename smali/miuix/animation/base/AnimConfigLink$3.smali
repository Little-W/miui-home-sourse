.class final Lmiuix/animation/base/AnimConfigLink$3;
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

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .line 95
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    or-long p1, p2, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/base/AnimConfigLink$3;->process(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/property/FloatProperty;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
