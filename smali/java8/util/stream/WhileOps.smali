.class final Ljava8/util/stream/WhileOps;
.super Ljava/lang/Object;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/WhileOps$DropWhileTask;,
        Ljava8/util/stream/WhileOps$TakeWhileTask;,
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;,
        Ljava8/util/stream/WhileOps$DropWhileSink;,
        Ljava8/util/stream/WhileOps$DropWhileOp;
    }
.end annotation


# static fields
.field static final DOUBLE_ARR_GEN:Ljava8/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field static final DROP_FLAGS:I

.field static final INT_ARR_GEN:Ljava8/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final LONG_ARR_GEN:Ljava8/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final TAKE_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    or-int/2addr v0, v1

    sput v0, Ljava8/util/stream/WhileOps;->TAKE_FLAGS:I

    .line 54
    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    sput v0, Ljava8/util/stream/WhileOps;->DROP_FLAGS:I

    .line 56
    invoke-static {}, Ljava8/util/stream/WhileOps$$Lambda$1;->lambdaFactory$()Ljava8/util/function/IntFunction;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/WhileOps;->INT_ARR_GEN:Ljava8/util/function/IntFunction;

    .line 57
    invoke-static {}, Ljava8/util/stream/WhileOps$$Lambda$2;->lambdaFactory$()Ljava8/util/function/IntFunction;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/WhileOps;->LONG_ARR_GEN:Ljava8/util/function/IntFunction;

    .line 58
    invoke-static {}, Ljava8/util/stream/WhileOps$$Lambda$3;->lambdaFactory$()Ljava8/util/function/IntFunction;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/WhileOps;->DOUBLE_ARR_GEN:Ljava8/util/function/IntFunction;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$135(I)[Ljava/lang/Integer;
    .locals 0

    .line 56
    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic lambda$static$136(I)[Ljava/lang/Long;
    .locals 0

    .line 57
    new-array p0, p0, [Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic lambda$static$137(I)[Ljava/lang/Double;
    .locals 0

    .line 58
    new-array p0, p0, [Ljava/lang/Double;

    return-object p0
.end method

.method static makeDropWhileDouble(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;",
            "Ljava8/util/function/DoublePredicate;",
            ")",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation

    .line 564
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    new-instance v0, Ljava8/util/stream/WhileOps$4Op;

    sget-object v1, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava8/util/stream/WhileOps$4Op;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoublePredicate;)V

    return-object v0
.end method

.method static makeDropWhileInt(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/IntPredicate;)Ljava8/util/stream/IntStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;",
            "Ljava8/util/function/IntPredicate;",
            ")",
            "Ljava8/util/stream/IntStream;"
        }
    .end annotation

    .line 414
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    new-instance v0, Ljava8/util/stream/WhileOps$2Op;

    sget-object v1, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava8/util/stream/WhileOps$2Op;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntPredicate;)V

    return-object v0
.end method

.method static makeDropWhileLong(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;",
            "Ljava8/util/function/LongPredicate;",
            ")",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation

    .line 489
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    new-instance v0, Ljava8/util/stream/WhileOps$3Op;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava8/util/stream/WhileOps$3Op;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongPredicate;)V

    return-object v0
.end method

.method static makeDropWhileRef(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 338
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v0, Ljava8/util/stream/WhileOps$1Op;

    sget-object v1, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava8/util/stream/WhileOps$1Op;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Predicate;)V

    return-object v0
.end method

.method static makeTakeWhileDouble(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;",
            "Ljava8/util/function/DoublePredicate;",
            ")",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation

    .line 240
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava8/util/stream/WhileOps$4;

    sget-object v1, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava8/util/stream/WhileOps$4;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoublePredicate;)V

    return-object v0
.end method

.method static makeTakeWhileInt(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/IntPredicate;)Ljava8/util/stream/IntStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;",
            "Ljava8/util/function/IntPredicate;",
            ")",
            "Ljava8/util/stream/IntStream;"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava8/util/stream/WhileOps$2;

    sget-object v1, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava8/util/stream/WhileOps$2;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntPredicate;)V

    return-object v0
.end method

.method static makeTakeWhileLong(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;",
            "Ljava8/util/function/LongPredicate;",
            ")",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation

    .line 183
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava8/util/stream/WhileOps$3;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava8/util/stream/WhileOps$3;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongPredicate;)V

    return-object v0
.end method

.method static makeTakeWhileRef(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava8/util/stream/WhileOps$1;

    sget-object v1, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljava8/util/stream/WhileOps$1;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Predicate;)V

    return-object v0
.end method
