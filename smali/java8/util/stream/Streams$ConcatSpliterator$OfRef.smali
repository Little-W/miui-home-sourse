.class Ljava8/util/stream/Streams$ConcatSpliterator$OfRef;
.super Ljava8/util/stream/Streams$ConcatSpliterator;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams$ConcatSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Streams$ConcatSpliterator<",
        "TT;",
        "Ljava8/util/Spliterator<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 879
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Streams$ConcatSpliterator;-><init>(Ljava8/util/Spliterator;Ljava8/util/Spliterator;)V

    return-void
.end method


# virtual methods
.method public getExactSizeIfKnown()J
    .locals 2

    .line 884
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 889
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method
