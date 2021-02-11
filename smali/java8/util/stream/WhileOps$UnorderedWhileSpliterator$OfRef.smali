.class abstract Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.super Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;,
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "TT;",
        "Ljava8/util/Spliterator<",
        "TT;>;>;",
        "Ljava8/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final p:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;",
            "Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef<",
            "TT;>;)V"
        }
    .end annotation

    .line 734
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 735
    iget-object p1, p2, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava8/util/function/Predicate;

    iput-object p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava8/util/function/Predicate;

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator;ZLjava8/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;Z",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 729
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava8/util/Spliterator;Z)V

    .line 730
    iput-object p3, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava8/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 740
    iget v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->count:I

    .line 741
    iput-object p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->t:Ljava/lang/Object;

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 746
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->forEachRemaining(Ljava8/util/Spliterator;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 751
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method
