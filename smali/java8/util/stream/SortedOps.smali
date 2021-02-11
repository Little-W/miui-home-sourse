.class final Ljava8/util/stream/SortedOps;
.super Ljava/lang/Object;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/SortedOps$DoubleSortingSink;,
        Ljava8/util/stream/SortedOps$SizedDoubleSortingSink;,
        Ljava8/util/stream/SortedOps$AbstractDoubleSortingSink;,
        Ljava8/util/stream/SortedOps$LongSortingSink;,
        Ljava8/util/stream/SortedOps$SizedLongSortingSink;,
        Ljava8/util/stream/SortedOps$AbstractLongSortingSink;,
        Ljava8/util/stream/SortedOps$IntSortingSink;,
        Ljava8/util/stream/SortedOps$SizedIntSortingSink;,
        Ljava8/util/stream/SortedOps$AbstractIntSortingSink;,
        Ljava8/util/stream/SortedOps$RefSortingSink;,
        Ljava8/util/stream/SortedOps$SizedRefSortingSink;,
        Ljava8/util/stream/SortedOps$AbstractRefSortingSink;,
        Ljava8/util/stream/SortedOps$OfDouble;,
        Ljava8/util/stream/SortedOps$OfLong;,
        Ljava8/util/stream/SortedOps$OfInt;,
        Ljava8/util/stream/SortedOps$OfRef;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeDouble(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/DoubleStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;)",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava8/util/stream/SortedOps$OfDouble;

    invoke-direct {v0, p0}, Ljava8/util/stream/SortedOps$OfDouble;-><init>(Ljava8/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeInt(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/IntStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;)",
            "Ljava8/util/stream/IntStream;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava8/util/stream/SortedOps$OfInt;

    invoke-direct {v0, p0}, Ljava8/util/stream/SortedOps$OfInt;-><init>(Ljava8/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeLong(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;)",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava8/util/stream/SortedOps$OfLong;

    invoke-direct {v0, p0}, Ljava8/util/stream/SortedOps$OfLong;-><init>(Ljava8/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeRef(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TT;*>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava8/util/stream/SortedOps$OfRef;

    invoke-direct {v0, p0}, Ljava8/util/stream/SortedOps$OfRef;-><init>(Ljava8/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeRef(Ljava8/util/stream/AbstractPipeline;Ljava/util/Comparator;)Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava8/util/stream/SortedOps$OfRef;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/SortedOps$OfRef;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava/util/Comparator;)V

    return-object v0
.end method
