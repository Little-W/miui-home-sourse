.class final synthetic Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/LongConsumer;


# static fields
.field private static final instance:Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$Lambda$1;

    invoke-direct {v0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$Lambda$1;-><init>()V

    sput-object v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$Lambda$1;->instance:Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/LongConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$Lambda$1;->instance:Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public accept(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfLong;->lambda$emptyConsumer$40(J)V

    return-void
.end method
