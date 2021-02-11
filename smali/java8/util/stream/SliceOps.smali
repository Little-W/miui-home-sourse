.class final Ljava8/util/stream/SliceOps;
.super Ljava/lang/Object;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/SliceOps$SliceTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JJ)J
    .locals 0

    .line 38
    invoke-static {p0, p1, p2, p3}, Ljava8/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(Ljava8/util/stream/StreamShape;Ljava8/util/Spliterator;JJ)Ljava8/util/Spliterator;
    .locals 0

    .line 38
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/SliceOps;->sliceSpliterator(Ljava8/util/stream/StreamShape;Ljava8/util/Spliterator;JJ)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(JJJ)J
    .locals 0

    .line 38
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/SliceOps;->calcSize(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static calcSize(JJJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, -0x1

    if-ltz v0, :cond_0

    sub-long/2addr p0, p2

    .line 54
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method private static calcSliceFence(JJ)J
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide v3, 0x7fffffffffffffffL

    if-ltz v2, :cond_0

    add-long/2addr p0, p2

    goto :goto_0

    :cond_0
    move-wide p0, v3

    :goto_0
    cmp-long p2, p0, v0

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    move-wide p0, v3

    :goto_1
    return-wide p0
.end method

.method private static flags(J)I
    .locals 3

    .line 544
    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    const-wide/16 v1, -0x1

    cmp-long p0, p0, v1

    if-eqz p0, :cond_0

    sget p0, Ljava8/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public static makeDouble(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/DoubleStream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;JJ)",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 448
    new-instance v0, Ljava8/util/stream/SliceOps$4;

    sget-object v3, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    .line 449
    invoke-static {p3, p4}, Ljava8/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava8/util/stream/SliceOps$4;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;IJJ)V

    return-object v0

    .line 446
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Skip must be non-negative: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeInt(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/IntStream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;JJ)",
            "Ljava8/util/stream/IntStream;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 230
    new-instance v0, Ljava8/util/stream/SliceOps$2;

    sget-object v3, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    .line 231
    invoke-static {p3, p4}, Ljava8/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava8/util/stream/SliceOps$2;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;IJJ)V

    return-object v0

    .line 228
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Skip must be non-negative: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeLong(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/LongStream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;JJ)",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 339
    new-instance v0, Ljava8/util/stream/SliceOps$3;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    .line 340
    invoke-static {p3, p4}, Ljava8/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava8/util/stream/SliceOps$3;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;IJJ)V

    return-object v0

    .line 337
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Skip must be non-negative: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeRef(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/Stream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TT;*>;JJ)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 114
    new-instance v0, Ljava8/util/stream/SliceOps$1;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    .line 115
    invoke-static {p3, p4}, Ljava8/util/stream/SliceOps;->flags(J)I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Ljava8/util/stream/SliceOps$1;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;IJJ)V

    return-object v0

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Skip must be non-negative: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sliceSpliterator(Ljava8/util/stream/StreamShape;Ljava8/util/Spliterator;JJ)Ljava8/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/StreamShape;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation

    .line 80
    invoke-static {p2, p3, p4, p5}, Ljava8/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v4

    .line 81
    sget-object p4, Ljava8/util/stream/SliceOps$5;->$SwitchMap$java8$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljava8/util/stream/StreamShape;->ordinal()I

    move-result p5

    aget p4, p4, p5

    packed-switch p4, :pswitch_data_0

    .line 95
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown shape "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :pswitch_0
    new-instance p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v1, p1

    check-cast v1, Ljava8/util/Spliterator$OfDouble;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava8/util/Spliterator$OfDouble;JJ)V

    return-object p0

    .line 89
    :pswitch_1
    new-instance p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v1, p1

    check-cast v1, Ljava8/util/Spliterator$OfLong;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava8/util/Spliterator$OfLong;JJ)V

    return-object p0

    .line 86
    :pswitch_2
    new-instance p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v1, p1

    check-cast v1, Ljava8/util/Spliterator$OfInt;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava8/util/Spliterator$OfInt;JJ)V

    return-object p0

    .line 83
    :pswitch_3
    new-instance p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava8/util/Spliterator;JJ)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
