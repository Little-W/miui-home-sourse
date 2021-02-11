.class final synthetic Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/IntConsumer;


# static fields
.field private static final instance:Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt$$Lambda$1;

    invoke-direct {v0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt$$Lambda$1;-><init>()V

    sput-object v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt$$Lambda$1;->instance:Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/IntConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt$$Lambda$1;->instance:Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public accept(I)V
    .locals 0

    invoke-static {p1}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt;->lambda$emptyConsumer$39(I)V

    return-void
.end method
