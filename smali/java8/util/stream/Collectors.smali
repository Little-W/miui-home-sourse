.class public final Ljava8/util/stream/Collectors;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Collectors$Partition;,
        Ljava8/util/stream/Collectors$CollectorImpl;
    }
.end annotation


# static fields
.field static final CH_CONCURRENT_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava8/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_CONCURRENT_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava8/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava8/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava8/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_UNORDERED_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava8/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_UNORDERED_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava8/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final DBL_SUM_STATS:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/DoubleSummaryStatistics;",
            ">;"
        }
    .end annotation
.end field

.field static final INT_SUM_STATS:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/IntSummaryStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIST_ADD:Ljava8/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;*>;"
        }
    .end annotation
.end field

.field static final LNG_SUM_STATS:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/LongSummaryStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_ADD:Ljava8/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/BiConsumer<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;*>;"
        }
    .end annotation
.end field

.field private static final UNMOD_MAP_FINISHER:Ljava8/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Function<",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/Map<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->CONCURRENT:Ljava8/util/stream/Collector$Characteristics;

    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->UNORDERED:Ljava8/util/stream/Collector$Characteristics;

    sget-object v2, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    .line 115
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    .line 118
    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->CONCURRENT:Ljava8/util/stream/Collector$Characteristics;

    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->UNORDERED:Ljava8/util/stream/Collector$Characteristics;

    .line 119
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    .line 121
    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    .line 122
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 123
    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->UNORDERED:Ljava8/util/stream/Collector$Characteristics;

    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    .line 124
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 127
    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->UNORDERED:Ljava8/util/stream/Collector$Characteristics;

    .line 128
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    .line 132
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$87;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->DBL_SUM_STATS:Ljava8/util/function/Supplier;

    .line 133
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$88;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->INT_SUM_STATS:Ljava8/util/function/Supplier;

    .line 134
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$89;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->LNG_SUM_STATS:Ljava8/util/function/Supplier;

    .line 158
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$90;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->UNMOD_MAP_FINISHER:Ljava8/util/function/Function;

    .line 166
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$91;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->LIST_ADD:Ljava8/util/function/BiConsumer;

    .line 167
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$92;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/Collectors;->SET_ADD:Ljava8/util/function/BiConsumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayListNew()Ljava8/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/Supplier<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 150
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$3;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    return-object v0
.end method

.method public static averagingDouble(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 985
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$49;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$50;->lambdaFactory$(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$51;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$52;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static averagingInt(Ljava8/util/function/ToIntFunction;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 928
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$41;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$42;->lambdaFactory$(Ljava8/util/function/ToIntFunction;)Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$43;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$44;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static averagingLong(Ljava8/util/function/ToLongFunction;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 947
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$45;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$46;->lambdaFactory$(Ljava8/util/function/ToLongFunction;)Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$47;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$48;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static boxSupplier(Ljava/lang/Object;)Ljava8/util/function/Supplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava8/util/function/Supplier<",
            "[TT;>;"
        }
    .end annotation

    .line 1025
    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$56;->lambdaFactory$(Ljava/lang/Object;)Ljava8/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static collectingAndThen(Ljava8/util/stream/Collector;Ljava8/util/function/Function;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "RR:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Collector<",
            "TT;TA;TR;>;",
            "Ljava8/util/function/Function<",
            "TR;TRR;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;TA;TRR;>;"
        }
    .end annotation

    .line 732
    invoke-interface {p0}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    .line 733
    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 735
    sget-object v0, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v6, v0

    goto :goto_0

    .line 737
    :cond_0
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 738
    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 739
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, v0

    .line 742
    :goto_0
    new-instance v0, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-interface {p0}, Ljava8/util/stream/Collector;->supplier()Ljava8/util/function/Supplier;

    move-result-object v2

    .line 743
    invoke-interface {p0}, Ljava8/util/stream/Collector;->accumulator()Ljava8/util/function/BiConsumer;

    move-result-object v3

    .line 744
    invoke-interface {p0}, Ljava8/util/stream/Collector;->combiner()Ljava8/util/function/BinaryOperator;

    move-result-object v4

    .line 745
    invoke-interface {p0}, Ljava8/util/stream/Collector;->finisher()Ljava8/util/function/Function;

    move-result-object p0

    invoke-static {p0, p1}, Ljava8/util/function/Functions;->andThen(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/Function;

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method static computeFinalSum([D)D
    .locals 5

    const/4 v0, 0x0

    .line 907
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    .line 908
    array-length v3, p0

    sub-int/2addr v3, v2

    aget-wide v2, p0, v3

    .line 909
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_0

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method private static concHashMapNew()Ljava8/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/Supplier<",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 141
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$2;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    return-object v0
.end method

.method private static concHashMapNew2()Ljava8/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/Supplier<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 146
    invoke-static {}, Ljava8/util/stream/Collectors;->concHashMapNew()Ljava8/util/function/Supplier;

    move-result-object v0

    return-object v0
.end method

.method public static counting()Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 765
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$28;->lambdaFactory$()Ljava8/util/function/ToLongFunction;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/Collectors;->summingLong(Ljava8/util/function/ToLongFunction;)Ljava8/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method private static duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;
    .locals 4

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Duplicate key %s (attempted merging values %s and %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static filtering(Ljava8/util/function/Predicate;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;",
            "Ljava8/util/stream/Collector<",
            "-TT;TA;TR;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 701
    invoke-interface {p1}, Ljava8/util/stream/Collector;->accumulator()Ljava8/util/function/BiConsumer;

    move-result-object v0

    .line 702
    new-instance v7, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava8/util/stream/Collector;->supplier()Ljava8/util/function/Supplier;

    move-result-object v2

    invoke-static {p0, v0}, Ljava8/util/stream/Collectors$$Lambda$27;->lambdaFactory$(Ljava8/util/function/Predicate;Ljava8/util/function/BiConsumer;)Ljava8/util/function/BiConsumer;

    move-result-object v3

    .line 708
    invoke-interface {p1}, Ljava8/util/stream/Collector;->combiner()Ljava8/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljava8/util/stream/Collector;->finisher()Ljava8/util/function/Function;

    move-result-object v5

    .line 709
    invoke-interface {p1}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v7
.end method

.method public static flatMapping(Ljava8/util/function/Function;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/stream/Stream<",
            "+TU;>;>;",
            "Ljava8/util/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 643
    invoke-interface {p1}, Ljava8/util/stream/Collector;->accumulator()Ljava8/util/function/BiConsumer;

    move-result-object v0

    .line 644
    new-instance v7, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava8/util/stream/Collector;->supplier()Ljava8/util/function/Supplier;

    move-result-object v2

    invoke-static {p0, v0}, Ljava8/util/stream/Collectors$$Lambda$26;->lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/BiConsumer;)Ljava8/util/function/BiConsumer;

    move-result-object v3

    .line 661
    invoke-interface {p1}, Ljava8/util/stream/Collector;->combiner()Ljava8/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljava8/util/stream/Collector;->finisher()Ljava8/util/function/Function;

    move-result-object v5

    .line 662
    invoke-interface {p1}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v7
.end method

.method public static groupingBy(Ljava8/util/function/Function;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1162
    invoke-static {}, Ljava8/util/stream/Collectors;->toList()Ljava8/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava8/util/stream/Collectors;->groupingBy(Ljava8/util/function/Function;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingBy(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TD;>;>(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Supplier<",
            "TM;>;",
            "Ljava8/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1261
    invoke-interface {p2}, Ljava8/util/stream/Collector;->supplier()Ljava8/util/function/Supplier;

    move-result-object v0

    .line 1262
    invoke-interface {p2}, Ljava8/util/stream/Collector;->accumulator()Ljava8/util/function/BiConsumer;

    move-result-object v1

    .line 1263
    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors$$Lambda$64;->lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;)Ljava8/util/function/BiConsumer;

    move-result-object v4

    .line 1268
    invoke-interface {p2}, Ljava8/util/stream/Collector;->combiner()Ljava8/util/function/BinaryOperator;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/stream/Collectors;->mapMerger(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;

    move-result-object v5

    .line 1272
    invoke-interface {p2}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1273
    new-instance p0, Ljava8/util/stream/Collectors$CollectorImpl;

    sget-object p2, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {p0, p1, v4, v5, p2}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object p0

    .line 1277
    :cond_0
    invoke-interface {p2}, Ljava8/util/stream/Collector;->finisher()Ljava8/util/function/Function;

    move-result-object p0

    .line 1278
    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$65;->lambdaFactory$(Ljava8/util/function/Function;)Ljava8/util/function/Function;

    move-result-object v6

    .line 1284
    new-instance p0, Ljava8/util/stream/Collectors$CollectorImpl;

    sget-object v7, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object p0
.end method

.method public static groupingBy(Ljava8/util/function/Function;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 1210
    invoke-static {}, Ljava8/util/stream/Collectors;->hashMapNew()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, v0, p1}, Ljava8/util/stream/Collectors;->groupingBy(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingByConcurrent(Ljava8/util/function/Function;)Ljava8/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1324
    invoke-static {}, Ljava8/util/stream/Collectors;->concHashMapNew()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {}, Ljava8/util/stream/Collectors;->toList()Ljava8/util/stream/Collector;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors;->groupingByConcurrent(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static groupingByConcurrent(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Supplier<",
            "TM;>;",
            "Ljava8/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1415
    invoke-interface {p2}, Ljava8/util/stream/Collector;->supplier()Ljava8/util/function/Supplier;

    move-result-object v0

    .line 1416
    invoke-interface {p2}, Ljava8/util/stream/Collector;->accumulator()Ljava8/util/function/BiConsumer;

    move-result-object v1

    .line 1417
    invoke-interface {p2}, Ljava8/util/stream/Collector;->combiner()Ljava8/util/function/BinaryOperator;

    move-result-object v2

    invoke-static {v2}, Ljava8/util/stream/Collectors;->mapMergerConcurrent(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;

    move-result-object v6

    .line 1421
    invoke-interface {p2}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljava8/util/stream/Collector$Characteristics;->CONCURRENT:Ljava8/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1422
    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors$$Lambda$66;->lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;)Ljava8/util/function/BiConsumer;

    move-result-object p0

    move-object v5, p0

    goto :goto_0

    .line 1429
    :cond_0
    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors$$Lambda$67;->lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;)Ljava8/util/function/BiConsumer;

    move-result-object p0

    move-object v5, p0

    .line 1438
    :goto_0
    invoke-interface {p2}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1439
    new-instance p0, Ljava8/util/stream/Collectors$CollectorImpl;

    sget-object p2, Ljava8/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {p0, p1, v5, v6, p2}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object p0

    .line 1443
    :cond_1
    invoke-interface {p2}, Ljava8/util/stream/Collector;->finisher()Ljava8/util/function/Function;

    move-result-object p0

    .line 1444
    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$68;->lambdaFactory$(Ljava8/util/function/Function;)Ljava8/util/function/Function;

    move-result-object v7

    .line 1450
    new-instance p0, Ljava8/util/stream/Collectors$CollectorImpl;

    sget-object v8, Ljava8/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object p0
.end method

.method public static groupingByConcurrent(Ljava8/util/function/Function;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 1368
    invoke-static {}, Ljava8/util/stream/Collectors;->concHashMapNew()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, v0, p1}, Ljava8/util/stream/Collectors;->groupingByConcurrent(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method private static hashMapNew()Ljava8/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/Supplier<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 137
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$1;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    return-object v0
.end method

.method private static hashSetNew()Ljava8/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/Supplier<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 154
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$4;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    return-object v0
.end method

.method public static joining()Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$15;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$16;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$17;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$18;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static joining(Ljava/lang/CharSequence;)Ljava8/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava8/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, ""

    .line 515
    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava8/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 534
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {p0, p1, p2}, Ljava8/util/stream/Collectors$$Lambda$19;->lambdaFactory$(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$20;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$21;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$22;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method static synthetic lambda$averagingDouble$91()[D
    .locals 1

    const/4 v0, 0x4

    .line 986
    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$averagingDouble$92(Ljava8/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .locals 6

    .line 987
    invoke-interface {p0, p2}, Ljava8/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 p0, 0x2

    aget-wide v2, p1, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    aput-wide v2, p1, p0

    const/4 p0, 0x3

    aget-wide v2, p1, p0

    add-double/2addr v2, v0

    aput-wide v2, p1, p0

    return-void
.end method

.method static synthetic lambda$averagingDouble$93([D[D)[D
    .locals 5

    const/4 v0, 0x0

    .line 988
    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingDouble$94([D)Ljava/lang/Double;
    .locals 5

    const/4 v0, 0x2

    .line 989
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava8/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    aget-wide v3, p0, v0

    div-double v3, v1, v3

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$averagingInt$83()[J
    .locals 1

    const/4 v0, 0x2

    .line 929
    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$averagingInt$84(Ljava8/util/function/ToIntFunction;[JLjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    .line 930
    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava8/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 p0, 0x1

    aget-wide v0, p1, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    aput-wide v0, p1, p0

    return-void
.end method

.method static synthetic lambda$averagingInt$85([J[J)[J
    .locals 5

    const/4 v0, 0x0

    .line 931
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingInt$86([J)Ljava/lang/Double;
    .locals 5

    const/4 v0, 0x1

    .line 932
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$averagingLong$87()[J
    .locals 1

    const/4 v0, 0x2

    .line 948
    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$averagingLong$88(Ljava8/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    .line 949
    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava8/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 p0, 0x1

    aget-wide v0, p1, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    aput-wide v0, p1, p0

    return-void
.end method

.method static synthetic lambda$averagingLong$89([J[J)[J
    .locals 5

    const/4 v0, 0x0

    .line 950
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingLong$90([J)Ljava/lang/Double;
    .locals 5

    const/4 v0, 0x1

    .line 951
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$boxSupplier$98(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 1025
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic lambda$counting$70(Ljava/lang/Object;)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method static synthetic lambda$filtering$69(Ljava8/util/function/Predicate;Ljava8/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 704
    invoke-interface {p0, p3}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 705
    invoke-interface {p1, p2, p3}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$flatMapping$68(Ljava8/util/function/Function;Ljava8/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 648
    :try_start_0
    invoke-interface {p0, p3}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 650
    :try_start_1
    invoke-interface {p0}, Ljava8/util/stream/Stream;->sequential()Ljava8/util/stream/BaseStream;

    move-result-object p3

    check-cast p3, Ljava8/util/stream/Stream;

    invoke-static {p1, p2}, Ljava8/util/stream/Collectors$$Lambda$86;->lambdaFactory$(Ljava8/util/function/BiConsumer;Ljava/lang/Object;)Ljava8/util/function/Consumer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 655
    :try_start_2
    invoke-interface {p0}, Ljava8/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    :try_start_3
    invoke-interface {p0}, Ljava8/util/stream/Stream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 657
    :catch_1
    :cond_2
    throw p1
.end method

.method static synthetic lambda$groupingBy$106(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    .line 1264
    invoke-interface {p0, p4}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "element cannot be mapped to a null key"

    invoke-static {p0, v0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1265
    invoke-static {p1}, Ljava8/util/stream/Collectors$$Lambda$85;->lambdaFactory$(Ljava8/util/function/Supplier;)Ljava8/util/function/Function;

    move-result-object p1

    invoke-static {p3, p0, p1}, Ljava8/util/Maps;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava8/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    .line 1266
    invoke-interface {p2, p0, p4}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$groupingBy$108(Ljava8/util/function/Function;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1279
    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$84;->lambdaFactory$(Ljava8/util/function/Function;)Ljava8/util/function/BiFunction;

    move-result-object p0

    invoke-static {p1, p0}, Ljava8/util/Maps;->replaceAll(Ljava/util/Map;Ljava8/util/function/BiFunction;)V

    return-object p1
.end method

.method static synthetic lambda$groupingByConcurrent$110(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 1

    .line 1423
    invoke-interface {p0, p4}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "element cannot be mapped to a null key"

    invoke-static {p0, v0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1424
    invoke-static {p1}, Ljava8/util/stream/Collectors$$Lambda$83;->lambdaFactory$(Ljava8/util/function/Supplier;)Ljava8/util/function/Function;

    move-result-object p1

    invoke-static {p3, p0, p1}, Ljava8/util/concurrent/ConcurrentMaps;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava8/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    .line 1425
    invoke-interface {p2, p0, p4}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$groupingByConcurrent$112(Ljava8/util/function/Function;Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 1

    .line 1430
    invoke-interface {p0, p4}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "element cannot be mapped to a null key"

    invoke-static {p0, v0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1431
    invoke-static {p1}, Ljava8/util/stream/Collectors$$Lambda$82;->lambdaFactory$(Ljava8/util/function/Supplier;)Ljava8/util/function/Function;

    move-result-object p1

    invoke-static {p3, p0, p1}, Ljava8/util/concurrent/ConcurrentMaps;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava8/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    .line 1432
    monitor-enter p0

    .line 1433
    :try_start_0
    invoke-interface {p2, p0, p4}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1434
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic lambda$groupingByConcurrent$114(Ljava8/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 1445
    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$81;->lambdaFactory$(Ljava8/util/function/Function;)Ljava8/util/function/BiFunction;

    move-result-object p0

    invoke-static {p1, p0}, Ljava8/util/concurrent/ConcurrentMaps;->replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava8/util/function/BiFunction;)V

    return-object p1
.end method

.method static synthetic lambda$joining$62(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    .line 502
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic lambda$joining$63(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava8/util/StringJoiner;
    .locals 1

    .line 535
    new-instance v0, Ljava8/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$mapMerger$64(Ljava8/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 555
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 556
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v1, v0, p0}, Ljava8/util/Maps;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static synthetic lambda$mapMergerConcurrent$65(Ljava8/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2

    .line 565
    invoke-interface {p2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 566
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v1, v0, p0}, Ljava8/util/concurrent/ConcurrentMaps;->merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static synthetic lambda$mapping$66(Ljava8/util/function/BiConsumer;Ljava8/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 602
    invoke-interface {p1, p3}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$105(Ljava8/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1265
    invoke-interface {p0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$107(Ljava8/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1279
    invoke-interface {p0, p2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$109(Ljava8/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1424
    invoke-interface {p0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$111(Ljava8/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1431
    invoke-interface {p0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$113(Ljava8/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1445
    invoke-interface {p0, p2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$67(Ljava8/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 650
    invoke-interface {p0, p1, p2}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$partitioningBy$115(Ljava8/util/function/BiConsumer;Ljava8/util/function/Predicate;Ljava8/util/stream/Collectors$Partition;Ljava/lang/Object;)V
    .locals 0

    .line 1514
    invoke-interface {p1, p3}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Ljava8/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p2, Ljava8/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    :goto_0
    invoke-interface {p0, p1, p3}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$partitioningBy$116(Ljava8/util/function/BinaryOperator;Ljava8/util/stream/Collectors$Partition;Ljava8/util/stream/Collectors$Partition;)Ljava8/util/stream/Collectors$Partition;
    .locals 3

    .line 1517
    new-instance v0, Ljava8/util/stream/Collectors$Partition;

    iget-object v1, p1, Ljava8/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    iget-object v2, p2, Ljava8/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p1, Ljava8/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    iget-object p2, p2, Ljava8/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    .line 1518
    invoke-interface {p0, p1, p2}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava8/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$partitioningBy$117(Ljava8/util/stream/Collector;)Ljava8/util/stream/Collectors$Partition;
    .locals 2

    .line 1520
    new-instance v0, Ljava8/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljava8/util/stream/Collector;->supplier()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1521
    invoke-interface {p0}, Ljava8/util/stream/Collector;->supplier()Ljava8/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava8/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$partitioningBy$118(Ljava8/util/stream/Collector;Ljava8/util/stream/Collectors$Partition;)Ljava/util/Map;
    .locals 3

    .line 1527
    new-instance v0, Ljava8/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljava8/util/stream/Collector;->finisher()Ljava8/util/function/Function;

    move-result-object v1

    iget-object v2, p1, Ljava8/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1528
    invoke-interface {p0}, Ljava8/util/stream/Collector;->finisher()Ljava8/util/function/Function;

    move-result-object p0

    iget-object p1, p1, Ljava8/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava8/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$reducing$100(Ljava8/util/stream/Collectors$1OptionalBox;Ljava8/util/stream/Collectors$1OptionalBox;)Ljava8/util/stream/Collectors$1OptionalBox;
    .locals 1

    .line 1074
    iget-boolean v0, p1, Ljava8/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Ljava8/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$reducing$101(Ljava8/util/stream/Collectors$1OptionalBox;)Ljava8/util/Optional;
    .locals 0

    .line 1075
    iget-object p0, p0, Ljava8/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-static {p0}, Ljava8/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava8/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$reducing$102(Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 1118
    aget-object v1, p2, v0

    invoke-interface {p1, p3}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, v0

    return-void
.end method

.method static synthetic lambda$reducing$103(Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1119
    aget-object v1, p1, v0

    aget-object p2, p2, v0

    invoke-interface {p0, v1, p2}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1
.end method

.method static synthetic lambda$reducing$104([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1120
    aget-object p0, p0, v0

    return-object p0
.end method

.method static synthetic lambda$reducing$95(Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 1017
    aget-object v1, p1, v0

    invoke-interface {p0, v1, p2}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, v0

    return-void
.end method

.method static synthetic lambda$reducing$96(Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1018
    aget-object v1, p1, v0

    aget-object p2, p2, v0

    invoke-interface {p0, v1, p2}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1
.end method

.method static synthetic lambda$reducing$97([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1019
    aget-object p0, p0, v0

    return-object p0
.end method

.method static synthetic lambda$reducing$99(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collectors$1OptionalBox;
    .locals 1

    .line 1073
    new-instance v0, Ljava8/util/stream/Collectors$1OptionalBox;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$1OptionalBox;-><init>(Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$static$51(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 159
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    invoke-static {p0}, Ljava8/util/Maps;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$summarizingDouble$125(Ljava8/util/function/ToDoubleFunction;Ljava8/util/DoubleSummaryStatistics;Ljava/lang/Object;)V
    .locals 2

    .line 2005
    invoke-interface {p0, p2}, Ljava8/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava8/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method

.method static synthetic lambda$summarizingDouble$126(Ljava8/util/DoubleSummaryStatistics;Ljava8/util/DoubleSummaryStatistics;)Ljava8/util/DoubleSummaryStatistics;
    .locals 0

    .line 2006
    invoke-virtual {p0, p1}, Ljava8/util/DoubleSummaryStatistics;->combine(Ljava8/util/DoubleSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summarizingInt$121(Ljava8/util/function/ToIntFunction;Ljava8/util/IntSummaryStatistics;Ljava/lang/Object;)V
    .locals 0

    .line 1965
    invoke-interface {p0, p2}, Ljava8/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava8/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method

.method static synthetic lambda$summarizingInt$122(Ljava8/util/IntSummaryStatistics;Ljava8/util/IntSummaryStatistics;)Ljava8/util/IntSummaryStatistics;
    .locals 0

    .line 1966
    invoke-virtual {p0, p1}, Ljava8/util/IntSummaryStatistics;->combine(Ljava8/util/IntSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summarizingLong$123(Ljava8/util/function/ToLongFunction;Ljava8/util/LongSummaryStatistics;Ljava/lang/Object;)V
    .locals 2

    .line 1985
    invoke-interface {p0, p2}, Ljava8/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava8/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic lambda$summarizingLong$124(Ljava8/util/LongSummaryStatistics;Ljava8/util/LongSummaryStatistics;)Ljava8/util/LongSummaryStatistics;
    .locals 0

    .line 1986
    invoke-virtual {p0, p1}, Ljava8/util/LongSummaryStatistics;->combine(Ljava8/util/LongSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summingDouble$79()[D
    .locals 1

    const/4 v0, 0x3

    .line 869
    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$summingDouble$80(Ljava8/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .locals 4

    .line 870
    invoke-interface {p0, p2}, Ljava8/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 871
    invoke-static {p1, v0, v1}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 p0, 0x2

    .line 872
    aget-wide v2, p1, p0

    add-double/2addr v2, v0

    aput-wide v2, p1, p0

    return-void
.end method

.method static synthetic lambda$summingDouble$81([D[D)[D
    .locals 5

    const/4 v0, 0x0

    .line 873
    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    .line 874
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    .line 875
    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$summingDouble$82([D)Ljava/lang/Double;
    .locals 2

    .line 876
    invoke-static {p0}, Ljava8/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$summingInt$71()[I
    .locals 1

    const/4 v0, 0x1

    .line 818
    new-array v0, v0, [I

    return-object v0
.end method

.method static synthetic lambda$summingInt$72(Ljava8/util/function/ToIntFunction;[ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 819
    aget v1, p1, v0

    invoke-interface {p0, p2}, Ljava8/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v1, p0

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingInt$73([I[I)[I
    .locals 2

    const/4 v0, 0x0

    .line 820
    aget v1, p0, v0

    aget p1, p1, v0

    add-int/2addr v1, p1

    aput v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$summingInt$74([I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 821
    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$summingLong$75()[J
    .locals 1

    const/4 v0, 0x1

    .line 836
    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$summingLong$76(Ljava8/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    .line 837
    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava8/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingLong$77([J[J)[J
    .locals 5

    const/4 v0, 0x0

    .line 838
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$summingLong$78([J)Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x0

    .line 839
    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toCollection$55(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 394
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toConcurrentMap$120(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 0

    .line 1945
    invoke-interface {p0, p4}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p4}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p0, p1, p2}, Ljava8/util/concurrent/ConcurrentMaps;->merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$toList$56(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 411
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toMap$119(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    .line 1785
    invoke-interface {p0, p4}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p4}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p0, p1, p2}, Ljava8/util/Maps;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$toSet$59(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    .line 453
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 454
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 456
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableList$57(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 430
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableList$58(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 431
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/Lists;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableSet$60(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    .line 482
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 483
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 485
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableSet$61(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 488
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/Sets;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$uniqKeysMapAccumulator$53(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    .line 306
    invoke-interface {p0, p3}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 307
    invoke-interface {p1, p3}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 309
    instance-of p3, p2, Ljava/util/concurrent/ConcurrentMap;

    if-eqz p3, :cond_0

    .line 310
    check-cast p2, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 312
    :cond_0
    invoke-static {p2, p0, p1}, Ljava8/util/Maps;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    return-void

    .line 315
    :cond_1
    invoke-static {p0, p2, p1}, Ljava8/util/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method static synthetic lambda$uniqKeysMapMerger$52(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 273
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    instance-of v2, p0, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_0

    .line 278
    move-object v2, p0

    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 280
    :cond_0
    invoke-static {p0, v1, v0}, Ljava8/util/Maps;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    goto :goto_0

    .line 283
    :cond_1
    invoke-static {v1, v2, v0}, Ljava8/util/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_2
    return-object p0
.end method

.method private static final listAdd()Ljava8/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/BiConsumer<",
            "Ljava/util/List<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 171
    sget-object v0, Ljava8/util/stream/Collectors;->LIST_ADD:Ljava8/util/function/BiConsumer;

    return-object v0
.end method

.method private static mapMerger(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Ljava8/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava8/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 554
    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$23;->lambdaFactory$(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;

    move-result-object p0

    return-object p0
.end method

.method private static mapMergerConcurrent(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;>(",
            "Ljava8/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava8/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 564
    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$24;->lambdaFactory$(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static mapping(Ljava8/util/function/Function;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava8/util/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 600
    invoke-interface {p1}, Ljava8/util/stream/Collector;->accumulator()Ljava8/util/function/BiConsumer;

    move-result-object v0

    .line 601
    new-instance v7, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava8/util/stream/Collector;->supplier()Ljava8/util/function/Supplier;

    move-result-object v2

    invoke-static {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$25;->lambdaFactory$(Ljava8/util/function/BiConsumer;Ljava8/util/function/Function;)Ljava8/util/function/BiConsumer;

    move-result-object v3

    .line 603
    invoke-interface {p1}, Ljava8/util/stream/Collector;->combiner()Ljava8/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljava8/util/stream/Collector;->finisher()Ljava8/util/function/Function;

    move-result-object v5

    .line 604
    invoke-interface {p1}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v7
.end method

.method public static maxBy(Ljava/util/Comparator;)Ljava8/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava8/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 803
    invoke-static {p0}, Ljava8/util/function/BinaryOperators;->maxBy(Ljava/util/Comparator;)Ljava8/util/function/BinaryOperator;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/stream/Collectors;->reducing(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static minBy(Ljava/util/Comparator;)Ljava8/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava8/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 784
    invoke-static {p0}, Ljava8/util/function/BinaryOperators;->minBy(Ljava/util/Comparator;)Ljava8/util/function/BinaryOperator;

    move-result-object p0

    invoke-static {p0}, Ljava8/util/stream/Collectors;->reducing(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;[Ljava8/util/stream/Collector$Characteristics;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TA;>;",
            "Ljava8/util/function/BiConsumer<",
            "TA;TT;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TA;>;",
            "Ljava8/util/function/Function<",
            "TA;TR;>;[",
            "Ljava8/util/stream/Collector$Characteristics;",
            ")",
            "Ljava8/util/stream/Collector<",
            "TT;TA;TR;>;"
        }
    .end annotation

    .line 232
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {p4}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 238
    array-length v1, p4

    if-lez v1, :cond_0

    .line 239
    const-class v0, Ljava8/util/stream/Collector$Characteristics;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 240
    invoke-static {v0, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 241
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 243
    :goto_0
    new-instance p4, Ljava8/util/stream/Collectors$CollectorImpl;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object p4
.end method

.method public static varargs of(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;[Ljava8/util/stream/Collector$Characteristics;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;TT;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TR;>;[",
            "Ljava8/util/stream/Collector$Characteristics;",
            ")",
            "Ljava8/util/stream/Collector<",
            "TT;TR;TR;>;"
        }
    .end annotation

    .line 200
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    array-length v0, p3

    if-nez v0, :cond_0

    sget-object p3, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    .line 206
    invoke-static {v0, p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    .line 208
    :goto_0
    new-instance v0, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static partitioningBy(Ljava8/util/function/Predicate;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1477
    invoke-static {}, Ljava8/util/stream/Collectors;->toList()Ljava8/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava8/util/stream/Collectors;->partitioningBy(Ljava8/util/function/Predicate;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static partitioningBy(Ljava8/util/function/Predicate;Ljava8/util/stream/Collector;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;",
            "Ljava8/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TD;>;>;"
        }
    .end annotation

    .line 1512
    invoke-interface {p1}, Ljava8/util/stream/Collector;->accumulator()Ljava8/util/function/BiConsumer;

    move-result-object v0

    .line 1513
    invoke-static {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$69;->lambdaFactory$(Ljava8/util/function/BiConsumer;Ljava8/util/function/Predicate;)Ljava8/util/function/BiConsumer;

    move-result-object v3

    .line 1515
    invoke-interface {p1}, Ljava8/util/stream/Collector;->combiner()Ljava8/util/function/BinaryOperator;

    move-result-object p0

    .line 1516
    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$70;->lambdaFactory$(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;

    move-result-object v4

    .line 1519
    invoke-static {p1}, Ljava8/util/stream/Collectors$$Lambda$71;->lambdaFactory$(Ljava8/util/stream/Collector;)Ljava8/util/function/Supplier;

    move-result-object v2

    .line 1522
    invoke-interface {p1}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1523
    new-instance p0, Ljava8/util/stream/Collectors$CollectorImpl;

    sget-object p1, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {p0, v2, v3, v4, p1}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object p0

    .line 1526
    :cond_0
    invoke-static {p1}, Ljava8/util/stream/Collectors$$Lambda$72;->lambdaFactory$(Ljava8/util/stream/Collector;)Ljava8/util/function/Function;

    move-result-object v5

    .line 1529
    new-instance p0, Ljava8/util/stream/Collectors$CollectorImpl;

    sget-object v6, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object p0
.end method

.method public static reducing(Ljava/lang/Object;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    .line 1015
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    .line 1016
    invoke-static {p0}, Ljava8/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {p1}, Ljava8/util/stream/Collectors$$Lambda$53;->lambdaFactory$(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {p1}, Ljava8/util/stream/Collectors$$Lambda$54;->lambdaFactory$(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$55;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static reducing(Ljava/lang/Object;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*TU;>;"
        }
    .end annotation

    .line 1116
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    .line 1117
    invoke-static {p0}, Ljava8/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {p2, p1}, Ljava8/util/stream/Collectors$$Lambda$61;->lambdaFactory$(Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;)Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {p2}, Ljava8/util/stream/Collectors$$Lambda$62;->lambdaFactory$(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$63;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static reducing(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava8/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 1072
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$57;->lambdaFactory$(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$58;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$59;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$60;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static final setAdd()Ljava8/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/BiConsumer<",
            "Ljava/util/Set<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 176
    sget-object v0, Ljava8/util/stream/Collectors;->SET_ADD:Ljava8/util/function/BiConsumer;

    return-object v0
.end method

.method static sumWithCompensation([DD)[D
    .locals 6

    const/4 v0, 0x1

    .line 892
    aget-wide v1, p0, v0

    sub-double/2addr p1, v1

    const/4 v1, 0x0

    .line 893
    aget-wide v2, p0, v1

    add-double v4, v2, p1

    sub-double v2, v4, v2

    sub-double/2addr v2, p1

    .line 895
    aput-wide v2, p0, v0

    .line 896
    aput-wide v4, p0, v1

    return-object p0
.end method

.method public static summarizingDouble(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava8/util/DoubleSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 2003
    new-instance v0, Ljava8/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava8/util/stream/Collectors;->DBL_SUM_STATS:Ljava8/util/function/Supplier;

    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$79;->lambdaFactory$(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/function/BiConsumer;

    move-result-object p0

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$80;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, p0, v2, v3}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingInt(Ljava8/util/function/ToIntFunction;)Ljava8/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava8/util/IntSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1963
    new-instance v0, Ljava8/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava8/util/stream/Collectors;->INT_SUM_STATS:Ljava8/util/function/Supplier;

    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$75;->lambdaFactory$(Ljava8/util/function/ToIntFunction;)Ljava8/util/function/BiConsumer;

    move-result-object p0

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$76;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, p0, v2, v3}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingLong(Ljava8/util/function/ToLongFunction;)Ljava8/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava8/util/LongSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1983
    new-instance v0, Ljava8/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava8/util/stream/Collectors;->LNG_SUM_STATS:Ljava8/util/function/Supplier;

    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$77;->lambdaFactory$(Ljava8/util/function/ToLongFunction;)Ljava8/util/function/BiConsumer;

    move-result-object p0

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$78;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, p0, v2, v3}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingDouble(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 868
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$37;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$38;->lambdaFactory$(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$39;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$40;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static summingInt(Ljava8/util/function/ToIntFunction;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 817
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$29;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$30;->lambdaFactory$(Ljava8/util/function/ToIntFunction;)Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$31;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$32;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static summingLong(Ljava8/util/function/ToLongFunction;)Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 835
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$33;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {p0}, Ljava8/util/stream/Collectors$$Lambda$34;->lambdaFactory$(Ljava8/util/function/ToLongFunction;)Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$35;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$36;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static toCollection(Ljava8/util/function/Supplier;)Ljava8/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Ljava8/util/function/Supplier<",
            "TC;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*TC;>;"
        }
    .end annotation

    .line 393
    new-instance v0, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$7;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$8;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toConcurrentMap(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1842
    new-instance v0, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors;->concHashMapNew2()Ljava8/util/function/Supplier;

    move-result-object v1

    .line 1843
    invoke-static {p0, p1}, Ljava8/util/stream/Collectors;->uniqKeysMapAccumulator(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/BiConsumer;

    move-result-object p0

    .line 1844
    invoke-static {}, Ljava8/util/stream/Collectors;->uniqKeysMapMerger()Ljava8/util/function/BinaryOperator;

    move-result-object p1

    sget-object v2, Ljava8/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v0, v1, p0, p1, v2}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toConcurrentMap(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1902
    invoke-static {}, Ljava8/util/stream/Collectors;->concHashMapNew()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava8/util/stream/Collectors;->toConcurrentMap(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Supplier;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toConcurrentMap(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Supplier;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava8/util/function/Supplier<",
            "TM;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1944
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Collectors$$Lambda$74;->lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BiConsumer;

    move-result-object p0

    .line 1946
    new-instance p1, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava8/util/stream/Collectors;->mapMergerConcurrent(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;

    move-result-object p2

    sget-object v0, Ljava8/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {p1, p3, p0, p2, v0}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object p1
.end method

.method public static toList()Ljava8/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 410
    new-instance v0, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors;->arrayListNew()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/Collectors;->listAdd()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$9;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    sget-object v4, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1590
    new-instance v0, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors;->hashMapNew()Ljava8/util/function/Supplier;

    move-result-object v1

    .line 1591
    invoke-static {p0, p1}, Ljava8/util/stream/Collectors;->uniqKeysMapAccumulator(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/BiConsumer;

    move-result-object p0

    .line 1592
    invoke-static {}, Ljava8/util/stream/Collectors;->uniqKeysMapMerger()Ljava8/util/function/BinaryOperator;

    move-result-object p1

    sget-object v2, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, p0, p1, v2}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1692
    invoke-static {}, Ljava8/util/stream/Collectors;->hashMapNew()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava8/util/stream/Collectors;->toMap(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Supplier;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Supplier;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TU;>;>(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava8/util/function/Supplier<",
            "TM;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1784
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Collectors$$Lambda$73;->lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BiConsumer;

    move-result-object p0

    .line 1786
    new-instance p1, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava8/util/stream/Collectors;->mapMerger(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BinaryOperator;

    move-result-object p2

    sget-object v0, Ljava8/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {p1, p3, p0, p2, v0}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object p1
.end method

.method public static toSet()Ljava8/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 451
    new-instance v0, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors;->hashSetNew()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/Collectors;->setAdd()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$12;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    sget-object v4, Ljava8/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toUnmodifiableList()Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 429
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors;->arrayListNew()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/Collectors;->listAdd()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$10;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$11;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static toUnmodifiableMap(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    const-string v0, "keyMapper"

    .line 1627
    invoke-static {p0, v0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueMapper"

    .line 1628
    invoke-static {p1, v0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1630
    invoke-static {p0, p1}, Ljava8/util/stream/Collectors;->toMap(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/stream/Collector;

    move-result-object p0

    .line 1631
    invoke-static {}, Ljava8/util/stream/Collectors;->unmodMapFinisher()Ljava8/util/function/Function;

    move-result-object p1

    .line 1629
    invoke-static {p0, p1}, Ljava8/util/stream/Collectors;->collectingAndThen(Ljava8/util/stream/Collector;Ljava8/util/function/Function;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toUnmodifiableMap(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    const-string v0, "keyMapper"

    .line 1732
    invoke-static {p0, v0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueMapper"

    .line 1733
    invoke-static {p1, v0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mergeFunction"

    .line 1734
    invoke-static {p2, v0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1736
    invoke-static {}, Ljava8/util/stream/Collectors;->hashMapNew()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava8/util/stream/Collectors;->toMap(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Supplier;)Ljava8/util/stream/Collector;

    move-result-object p0

    .line 1737
    invoke-static {}, Ljava8/util/stream/Collectors;->unmodMapFinisher()Ljava8/util/function/Function;

    move-result-object p1

    .line 1735
    invoke-static {p0, p1}, Ljava8/util/stream/Collectors;->collectingAndThen(Ljava8/util/stream/Collector;Ljava8/util/function/Function;)Ljava8/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toUnmodifiableSet()Ljava8/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 480
    new-instance v6, Ljava8/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava8/util/stream/Collectors;->hashSetNew()Ljava8/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/Collectors;->setAdd()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$13;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$14;->lambdaFactory$()Ljava8/util/function/Function;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/Collectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Collectors$CollectorImpl;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BinaryOperator;Ljava8/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static uniqKeysMapAccumulator(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/BiConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava8/util/function/BiConsumer<",
            "Ljava/util/Map<",
            "TK;TV;>;TT;>;"
        }
    .end annotation

    .line 305
    invoke-static {p0, p1}, Ljava8/util/stream/Collectors$$Lambda$6;->lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/BiConsumer;

    move-result-object p0

    return-object p0
.end method

.method private static uniqKeysMapMerger()Ljava8/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>()",
            "Ljava8/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 272
    invoke-static {}, Ljava8/util/stream/Collectors$$Lambda$5;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v0

    return-object v0
.end method

.method private static final unmodMapFinisher()Ljava8/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/Function<",
            "Ljava/util/Map<",
            "TK;TU;>;",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 163
    sget-object v0, Ljava8/util/stream/Collectors;->UNMOD_MAP_FINISHER:Ljava8/util/function/Function;

    return-object v0
.end method
