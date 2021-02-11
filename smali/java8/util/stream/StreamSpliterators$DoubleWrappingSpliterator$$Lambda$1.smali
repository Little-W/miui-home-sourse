.class final synthetic Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BooleanSupplier;


# instance fields
.field private final arg$1:Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;


# direct methods
.method private constructor <init>(Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$Lambda$1;->arg$1:Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)Ljava8/util/function/BooleanSupplier;
    .locals 1

    new-instance v0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$Lambda$1;

    invoke-direct {v0, p0}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$Lambda$1;-><init>(Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)V

    return-object v0
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$Lambda$1;->arg$1:Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    invoke-static {v0}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->lambda$initPartialTraversalState$36(Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)Z

    move-result v0

    return v0
.end method
