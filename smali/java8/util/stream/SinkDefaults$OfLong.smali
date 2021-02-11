.class final Ljava8/util/stream/SinkDefaults$OfLong;
.super Ljava/lang/Object;
.source "SinkDefaults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SinkDefaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static accept(Ljava8/util/stream/Sink$OfLong;Ljava/lang/Long;)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava8/util/stream/Sink$OfLong;->accept(J)V

    return-void
.end method
