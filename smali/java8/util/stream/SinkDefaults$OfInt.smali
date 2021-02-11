.class final Ljava8/util/stream/SinkDefaults$OfInt;
.super Ljava/lang/Object;
.source "SinkDefaults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SinkDefaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static accept(Ljava8/util/stream/Sink$OfInt;Ljava/lang/Integer;)V
    .locals 0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Ljava8/util/stream/Sink$OfInt;->accept(I)V

    return-void
.end method
