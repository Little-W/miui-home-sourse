.class final synthetic Ljava8/util/stream/StreamSpliterators$WrappingSpliterator$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final arg$1:Ljava8/util/stream/SpinedBuffer;


# direct methods
.method private constructor <init>(Ljava8/util/stream/SpinedBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator$$Lambda$1;->arg$1:Ljava8/util/stream/SpinedBuffer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/stream/SpinedBuffer;)Ljava8/util/function/Consumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator$$Lambda$1;

    invoke-direct {v0, p0}, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator$$Lambda$1;-><init>(Ljava8/util/stream/SpinedBuffer;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator$$Lambda$1;->arg$1:Ljava8/util/stream/SpinedBuffer;

    invoke-virtual {v0, p1}, Ljava8/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    return-void
.end method
