.class final Ljava8/util/stream/Nodes;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Nodes$CollectorTask;,
        Ljava8/util/stream/Nodes$ToArrayTask;,
        Ljava8/util/stream/Nodes$SizedCollectorTask;,
        Ljava8/util/stream/Nodes$DoubleSpinedNodeBuilder;,
        Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;,
        Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;,
        Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;,
        Ljava8/util/stream/Nodes$LongFixedNodeBuilder;,
        Ljava8/util/stream/Nodes$IntFixedNodeBuilder;,
        Ljava8/util/stream/Nodes$DoubleArrayNode;,
        Ljava8/util/stream/Nodes$LongArrayNode;,
        Ljava8/util/stream/Nodes$IntArrayNode;,
        Ljava8/util/stream/Nodes$SpinedNodeBuilder;,
        Ljava8/util/stream/Nodes$FixedNodeBuilder;,
        Ljava8/util/stream/Nodes$InternalNodeSpliterator;,
        Ljava8/util/stream/Nodes$ConcNode;,
        Ljava8/util/stream/Nodes$AbstractConcNode;,
        Ljava8/util/stream/Nodes$CollectionNode;,
        Ljava8/util/stream/Nodes$ArrayNode;,
        Ljava8/util/stream/Nodes$EmptyNode;,
        Ljava8/util/stream/Nodes$OfInt;,
        Ljava8/util/stream/Nodes$OfLong;,
        Ljava8/util/stream/Nodes$OfDouble;,
        Ljava8/util/stream/Nodes$OfPrimitive;
    }
.end annotation


# static fields
.field static final BAD_SIZE:Ljava/lang/String; = "Stream size exceeds max array size"

.field private static final EMPTY_DOUBLE_ARRAY:[D

.field private static final EMPTY_DOUBLE_NODE:Ljava8/util/stream/Node$OfDouble;

.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_INT_NODE:Ljava8/util/stream/Node$OfInt;

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final EMPTY_LONG_NODE:Ljava8/util/stream/Node$OfLong;

.field private static final EMPTY_NODE:Ljava8/util/stream/Node;

.field static final MAX_ARRAY_SIZE:J = 0x7ffffff7L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava8/util/stream/Nodes$EmptyNode$OfRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava8/util/stream/Nodes$EmptyNode$OfRef;-><init>(Ljava8/util/stream/Nodes$1;)V

    sput-object v0, Ljava8/util/stream/Nodes;->EMPTY_NODE:Ljava8/util/stream/Node;

    .line 69
    new-instance v0, Ljava8/util/stream/Nodes$EmptyNode$OfInt;

    invoke-direct {v0}, Ljava8/util/stream/Nodes$EmptyNode$OfInt;-><init>()V

    sput-object v0, Ljava8/util/stream/Nodes;->EMPTY_INT_NODE:Ljava8/util/stream/Node$OfInt;

    .line 70
    new-instance v0, Ljava8/util/stream/Nodes$EmptyNode$OfLong;

    invoke-direct {v0}, Ljava8/util/stream/Nodes$EmptyNode$OfLong;-><init>()V

    sput-object v0, Ljava8/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava8/util/stream/Node$OfLong;

    .line 71
    new-instance v0, Ljava8/util/stream/Nodes$EmptyNode$OfDouble;

    invoke-direct {v0}, Ljava8/util/stream/Nodes$EmptyNode$OfDouble;-><init>()V

    sput-object v0, Ljava8/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava8/util/stream/Node$OfDouble;

    const/4 v0, 0x0

    .line 1929
    new-array v1, v0, [I

    sput-object v1, Ljava8/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    .line 1930
    new-array v1, v0, [J

    sput-object v1, Ljava8/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    .line 1931
    new-array v0, v0, [D

    sput-object v0, Ljava8/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Error;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .line 53
    sget-object v0, Ljava8/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    return-object v0
.end method

.method static synthetic access$600()[J
    .locals 1

    .line 53
    sget-object v0, Ljava8/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    return-object v0
.end method

.method static synthetic access$700()[D
    .locals 1

    .line 53
    sget-object v0, Ljava8/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0
.end method

.method static builder()Ljava8/util/stream/Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/Node$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 480
    new-instance v0, Ljava8/util/stream/Nodes$SpinedNodeBuilder;

    invoke-direct {v0}, Ljava8/util/stream/Nodes$SpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static builder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava8/util/stream/Node$Builder<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 468
    new-instance v0, Ljava8/util/stream/Nodes$FixedNodeBuilder;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/Nodes$FixedNodeBuilder;-><init>(JLjava8/util/function/IntFunction;)V

    goto :goto_0

    .line 470
    :cond_0
    invoke-static {}, Ljava8/util/stream/Nodes;->builder()Ljava8/util/stream/Node$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static castingArray()Ljava8/util/function/IntFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;"
        }
    .end annotation

    .line 370
    invoke-static {}, Ljava8/util/stream/Nodes$$Lambda$2;->lambdaFactory$()Ljava8/util/function/IntFunction;

    move-result-object v0

    return-object v0
.end method

.method public static collect(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 621
    invoke-virtual {p0, p1}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    .line 622
    invoke-interface {p1, v2}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    .line 625
    invoke-interface {p3, p2}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    .line 626
    new-instance p3, Ljava8/util/stream/Nodes$SizedCollectorTask$OfRef;

    invoke-direct {p3, p1, p0, p2}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfRef;->invoke()Ljava/lang/Object;

    .line 627
    invoke-static {p2}, Ljava8/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0

    .line 624
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 629
    :cond_1
    new-instance v0, Ljava8/util/stream/Nodes$CollectorTask$OfRef;

    invoke-direct {v0, p0, p3, p1}, Ljava8/util/stream/Nodes$CollectorTask$OfRef;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/IntFunction;Ljava8/util/Spliterator;)V

    invoke-virtual {v0}, Ljava8/util/stream/Nodes$CollectorTask$OfRef;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node;

    if-eqz p2, :cond_2

    .line 630
    invoke-static {p0, p3}, Ljava8/util/stream/Nodes;->flatten(Ljava8/util/stream/Node;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static collectDouble(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfDouble;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z)",
            "Ljava8/util/stream/Node$OfDouble;"
        }
    .end annotation

    .line 734
    invoke-virtual {p0, p1}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    .line 735
    invoke-interface {p1, v2}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    .line 738
    new-array p2, p2, [D

    .line 739
    new-instance v0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;

    invoke-direct {v0, p1, p0, p2}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;[D)V

    invoke-virtual {v0}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfDouble;->invoke()Ljava/lang/Object;

    .line 740
    invoke-static {p2}, Ljava8/util/stream/Nodes;->node([D)Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0

    .line 737
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 743
    :cond_1
    new-instance v0, Ljava8/util/stream/Nodes$CollectorTask$OfDouble;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Nodes$CollectorTask$OfDouble;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    invoke-virtual {v0}, Ljava8/util/stream/Nodes$CollectorTask$OfDouble;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$OfDouble;

    if-eqz p2, :cond_2

    .line 744
    invoke-static {p0}, Ljava8/util/stream/Nodes;->flattenDouble(Ljava8/util/stream/Node$OfDouble;)Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static collectInt(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfInt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z)",
            "Ljava8/util/stream/Node$OfInt;"
        }
    .end annotation

    .line 658
    invoke-virtual {p0, p1}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    .line 659
    invoke-interface {p1, v2}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    .line 662
    new-array p2, p2, [I

    .line 663
    new-instance v0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;

    invoke-direct {v0, p1, p0, p2}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;[I)V

    invoke-virtual {v0}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->invoke()Ljava/lang/Object;

    .line 664
    invoke-static {p2}, Ljava8/util/stream/Nodes;->node([I)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0

    .line 661
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 667
    :cond_1
    new-instance v0, Ljava8/util/stream/Nodes$CollectorTask$OfInt;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Nodes$CollectorTask$OfInt;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    invoke-virtual {v0}, Ljava8/util/stream/Nodes$CollectorTask$OfInt;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$OfInt;

    if-eqz p2, :cond_2

    .line 668
    invoke-static {p0}, Ljava8/util/stream/Nodes;->flattenInt(Ljava8/util/stream/Node$OfInt;)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static collectLong(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfLong;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z)",
            "Ljava8/util/stream/Node$OfLong;"
        }
    .end annotation

    .line 696
    invoke-virtual {p0, p1}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    .line 697
    invoke-interface {p1, v2}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    .line 700
    new-array p2, p2, [J

    .line 701
    new-instance v0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;

    invoke-direct {v0, p1, p0, p2}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;[J)V

    invoke-virtual {v0}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->invoke()Ljava/lang/Object;

    .line 702
    invoke-static {p2}, Ljava8/util/stream/Nodes;->node([J)Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0

    .line 699
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 705
    :cond_1
    new-instance v0, Ljava8/util/stream/Nodes$CollectorTask$OfLong;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Nodes$CollectorTask$OfLong;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    invoke-virtual {v0}, Ljava8/util/stream/Nodes$CollectorTask$OfLong;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$OfLong;

    if-eqz p2, :cond_2

    .line 706
    invoke-static {p0}, Ljava8/util/stream/Nodes;->flattenLong(Ljava8/util/stream/Node$OfLong;)Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method static conc(Ljava8/util/stream/StreamShape;Ljava8/util/stream/Node;Ljava8/util/stream/Node;)Ljava8/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/StreamShape;",
            "Ljava8/util/stream/Node<",
            "TT;>;",
            "Ljava8/util/stream/Node<",
            "TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 415
    sget-object v0, Ljava8/util/stream/Nodes$1;->$SwitchMap$java8$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljava8/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 425
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown shape "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :pswitch_0
    new-instance p0, Ljava8/util/stream/Nodes$ConcNode$OfDouble;

    check-cast p1, Ljava8/util/stream/Node$OfDouble;

    check-cast p2, Ljava8/util/stream/Node$OfDouble;

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$ConcNode$OfDouble;-><init>(Ljava8/util/stream/Node$OfDouble;Ljava8/util/stream/Node$OfDouble;)V

    return-object p0

    .line 421
    :pswitch_1
    new-instance p0, Ljava8/util/stream/Nodes$ConcNode$OfLong;

    check-cast p1, Ljava8/util/stream/Node$OfLong;

    check-cast p2, Ljava8/util/stream/Node$OfLong;

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$ConcNode$OfLong;-><init>(Ljava8/util/stream/Node$OfLong;Ljava8/util/stream/Node$OfLong;)V

    return-object p0

    .line 419
    :pswitch_2
    new-instance p0, Ljava8/util/stream/Nodes$ConcNode$OfInt;

    check-cast p1, Ljava8/util/stream/Node$OfInt;

    check-cast p2, Ljava8/util/stream/Node$OfInt;

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$ConcNode$OfInt;-><init>(Ljava8/util/stream/Node$OfInt;Ljava8/util/stream/Node$OfInt;)V

    return-object p0

    .line 417
    :pswitch_3
    new-instance p0, Ljava8/util/stream/Nodes$ConcNode;

    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$ConcNode;-><init>(Ljava8/util/stream/Node;Ljava8/util/stream/Node;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static doubleBuilder()Ljava8/util/stream/Node$Builder$OfDouble;
    .locals 1

    .line 591
    new-instance v0, Ljava8/util/stream/Nodes$DoubleSpinedNodeBuilder;

    invoke-direct {v0}, Ljava8/util/stream/Nodes$DoubleSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static doubleBuilder(J)Ljava8/util/stream/Node$Builder$OfDouble;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 580
    new-instance v0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;-><init>(J)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-static {}, Ljava8/util/stream/Nodes;->doubleBuilder()Ljava8/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static emptyNode(Ljava8/util/stream/StreamShape;)Ljava8/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/StreamShape;",
            ")",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 384
    sget-object v0, Ljava8/util/stream/Nodes$1;->$SwitchMap$java8$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljava8/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :pswitch_0
    sget-object p0, Ljava8/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava8/util/stream/Node$OfDouble;

    return-object p0

    .line 387
    :pswitch_1
    sget-object p0, Ljava8/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava8/util/stream/Node$OfLong;

    return-object p0

    .line 386
    :pswitch_2
    sget-object p0, Ljava8/util/stream/Nodes;->EMPTY_INT_NODE:Ljava8/util/stream/Node$OfInt;

    return-object p0

    .line 385
    :pswitch_3
    sget-object p0, Ljava8/util/stream/Nodes;->EMPTY_NODE:Ljava8/util/stream/Node;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static flatten(Ljava8/util/stream/Node;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Node<",
            "TT;>;",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 766
    invoke-interface {p0}, Ljava8/util/stream/Node;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 767
    invoke-interface {p0}, Ljava8/util/stream/Node;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 770
    invoke-interface {p1, v0}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 771
    new-instance v0, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava8/util/stream/Node;[Ljava/lang/Object;ILjava8/util/stream/Nodes$1;)V

    invoke-virtual {v0}, Ljava8/util/stream/Nodes$ToArrayTask$OfRef;->invoke()Ljava/lang/Object;

    .line 772
    invoke-static {p1}, Ljava8/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0

    .line 769
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static flattenDouble(Ljava8/util/stream/Node$OfDouble;)Ljava8/util/stream/Node$OfDouble;
    .locals 4

    .line 844
    invoke-interface {p0}, Ljava8/util/stream/Node$OfDouble;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 845
    invoke-interface {p0}, Ljava8/util/stream/Node$OfDouble;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 848
    new-array v0, v0, [D

    .line 849
    new-instance v1, Ljava8/util/stream/Nodes$ToArrayTask$OfDouble;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Ljava8/util/stream/Nodes$ToArrayTask$OfDouble;-><init>(Ljava8/util/stream/Node$OfDouble;[DILjava8/util/stream/Nodes$1;)V

    invoke-virtual {v1}, Ljava8/util/stream/Nodes$ToArrayTask$OfDouble;->invoke()Ljava/lang/Object;

    .line 850
    invoke-static {v0}, Ljava8/util/stream/Nodes;->node([D)Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0

    .line 847
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static flattenInt(Ljava8/util/stream/Node$OfInt;)Ljava8/util/stream/Node$OfInt;
    .locals 4

    .line 792
    invoke-interface {p0}, Ljava8/util/stream/Node$OfInt;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 793
    invoke-interface {p0}, Ljava8/util/stream/Node$OfInt;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 796
    new-array v0, v0, [I

    .line 797
    new-instance v1, Ljava8/util/stream/Nodes$ToArrayTask$OfInt;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Ljava8/util/stream/Nodes$ToArrayTask$OfInt;-><init>(Ljava8/util/stream/Node$OfInt;[IILjava8/util/stream/Nodes$1;)V

    invoke-virtual {v1}, Ljava8/util/stream/Nodes$ToArrayTask$OfInt;->invoke()Ljava/lang/Object;

    .line 798
    invoke-static {v0}, Ljava8/util/stream/Nodes;->node([I)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0

    .line 795
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static flattenLong(Ljava8/util/stream/Node$OfLong;)Ljava8/util/stream/Node$OfLong;
    .locals 4

    .line 818
    invoke-interface {p0}, Ljava8/util/stream/Node$OfLong;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 819
    invoke-interface {p0}, Ljava8/util/stream/Node$OfLong;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 822
    new-array v0, v0, [J

    .line 823
    new-instance v1, Ljava8/util/stream/Nodes$ToArrayTask$OfLong;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Ljava8/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljava8/util/stream/Node$OfLong;[JILjava8/util/stream/Nodes$1;)V

    invoke-virtual {v1}, Ljava8/util/stream/Nodes$ToArrayTask$OfLong;->invoke()Ljava/lang/Object;

    .line 824
    invoke-static {v0}, Ljava8/util/stream/Nodes;->node([J)Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0

    .line 821
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method static getChild()Ljava8/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method static getChildCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method static getShape()Ljava8/util/stream/StreamShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/StreamShape;"
        }
    .end annotation

    .line 82
    sget-object v0, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    return-object v0
.end method

.method static intBuilder()Ljava8/util/stream/Node$Builder$OfInt;
    .locals 1

    .line 517
    new-instance v0, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;

    invoke-direct {v0}, Ljava8/util/stream/Nodes$IntSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static intBuilder(J)Ljava8/util/stream/Node$Builder$OfInt;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 506
    new-instance v0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;-><init>(J)V

    goto :goto_0

    .line 508
    :cond_0
    invoke-static {}, Ljava8/util/stream/Nodes;->intBuilder()Ljava8/util/stream/Node$Builder$OfInt;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$castingArray$49(I)[Ljava/lang/Object;
    .locals 0

    .line 370
    new-array p0, p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic lambda$truncate$45(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method static longBuilder()Ljava8/util/stream/Node$Builder$OfLong;
    .locals 1

    .line 554
    new-instance v0, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;

    invoke-direct {v0}, Ljava8/util/stream/Nodes$LongSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static longBuilder(J)Ljava8/util/stream/Node$Builder$OfLong;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 543
    new-instance v0, Ljava8/util/stream/Nodes$LongFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Nodes$LongFixedNodeBuilder;-><init>(J)V

    goto :goto_0

    .line 545
    :cond_0
    invoke-static {}, Ljava8/util/stream/Nodes;->longBuilder()Ljava8/util/stream/Node$Builder$OfLong;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static node([D)Ljava8/util/stream/Node$OfDouble;
    .locals 1

    .line 568
    new-instance v0, Ljava8/util/stream/Nodes$DoubleArrayNode;

    invoke-direct {v0, p0}, Ljava8/util/stream/Nodes$DoubleArrayNode;-><init>([D)V

    return-object v0
.end method

.method static node([I)Ljava8/util/stream/Node$OfInt;
    .locals 1

    .line 494
    new-instance v0, Ljava8/util/stream/Nodes$IntArrayNode;

    invoke-direct {v0, p0}, Ljava8/util/stream/Nodes$IntArrayNode;-><init>([I)V

    return-object v0
.end method

.method static node([J)Ljava8/util/stream/Node$OfLong;
    .locals 1

    .line 531
    new-instance v0, Ljava8/util/stream/Nodes$LongArrayNode;

    invoke-direct {v0, p0}, Ljava8/util/stream/Nodes$LongArrayNode;-><init>([J)V

    return-object v0
.end method

.method static node(Ljava/util/Collection;)Ljava8/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 454
    new-instance v0, Ljava8/util/stream/Nodes$CollectionNode;

    invoke-direct {v0, p0}, Ljava8/util/stream/Nodes$CollectionNode;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static node([Ljava/lang/Object;)Ljava8/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava8/util/stream/Nodes$ArrayNode;

    invoke-direct {v0, p0}, Ljava8/util/stream/Nodes$ArrayNode;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method static truncate(Ljava8/util/stream/Node;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Node<",
            "TT;>;JJ",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 124
    invoke-interface {p0}, Ljava8/util/stream/Node;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    .line 127
    :cond_0
    invoke-interface {p0}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    sub-long v1, p3, p1

    .line 129
    invoke-static {v1, v2, p5}, Ljava8/util/stream/Nodes;->builder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object p5

    .line 130
    invoke-interface {p5, v1, v2}, Ljava8/util/stream/Node$Builder;->begin(J)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_1

    .line 131
    invoke-static {}, Ljava8/util/stream/Nodes$$Lambda$1;->lambdaFactory$()Ljava8/util/function/Consumer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-interface {p0}, Ljava8/util/stream/Node;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    .line 133
    invoke-interface {v0, p5}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v3

    cmp-long p0, p0, v1

    if-gez p0, :cond_3

    .line 135
    invoke-interface {v0, p5}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    :cond_3
    :goto_2
    invoke-interface {p5}, Ljava8/util/stream/Node$Builder;->end()V

    .line 138
    invoke-interface {p5}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0
.end method
