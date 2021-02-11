.class final Ljava8/util/stream/RefStreams$2;
.super Ljava8/util/Spliterators$AbstractSpliterator;
.source "RefStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/RefStreams;->iterate(Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/UnaryOperator;)Ljava8/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/Spliterators$AbstractSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field finished:Z

.field prev:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field started:Z

.field final synthetic val$hasNext:Ljava8/util/function/Predicate;

.field final synthetic val$next:Ljava8/util/function/UnaryOperator;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(JILjava8/util/function/UnaryOperator;Ljava/lang/Object;Ljava8/util/function/Predicate;)V
    .locals 0

    .line 353
    iput-object p4, p0, Ljava8/util/stream/RefStreams$2;->val$next:Ljava8/util/function/UnaryOperator;

    iput-object p5, p0, Ljava8/util/stream/RefStreams$2;->val$seed:Ljava/lang/Object;

    iput-object p6, p0, Ljava8/util/stream/RefStreams$2;->val$hasNext:Ljava8/util/function/Predicate;

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 381
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-boolean v0, p0, Ljava8/util/stream/RefStreams$2;->finished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Ljava8/util/stream/RefStreams$2;->finished:Z

    .line 386
    iget-boolean v0, p0, Ljava8/util/stream/RefStreams$2;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/RefStreams$2;->val$next:Ljava8/util/function/UnaryOperator;

    iget-object v1, p0, Ljava8/util/stream/RefStreams$2;->prev:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava8/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava8/util/stream/RefStreams$2;->val$seed:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Ljava8/util/stream/RefStreams$2;->prev:Ljava/lang/Object;

    .line 388
    :goto_1
    iget-object v1, p0, Ljava8/util/stream/RefStreams$2;->val$hasNext:Ljava8/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 390
    iget-object v1, p0, Ljava8/util/stream/RefStreams$2;->val$next:Ljava8/util/function/UnaryOperator;

    invoke-interface {v1, v0}, Ljava8/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 359
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-boolean v0, p0, Ljava8/util/stream/RefStreams$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 364
    :cond_0
    iget-boolean v0, p0, Ljava8/util/stream/RefStreams$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Ljava8/util/stream/RefStreams$2;->val$next:Ljava8/util/function/UnaryOperator;

    iget-object v3, p0, Ljava8/util/stream/RefStreams$2;->prev:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava8/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/RefStreams$2;->val$seed:Ljava/lang/Object;

    .line 368
    iput-boolean v2, p0, Ljava8/util/stream/RefStreams$2;->started:Z

    .line 370
    :goto_0
    iget-object v3, p0, Ljava8/util/stream/RefStreams$2;->val$hasNext:Ljava8/util/function/Predicate;

    invoke-interface {v3, v0}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p1, 0x0

    .line 371
    iput-object p1, p0, Ljava8/util/stream/RefStreams$2;->prev:Ljava/lang/Object;

    .line 372
    iput-boolean v2, p0, Ljava8/util/stream/RefStreams$2;->finished:Z

    return v1

    .line 375
    :cond_2
    iput-object v0, p0, Ljava8/util/stream/RefStreams$2;->prev:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v2
.end method
