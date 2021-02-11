.class final Ljava8/util/stream/RefStreams$1;
.super Ljava8/util/Spliterators$AbstractSpliterator;
.source "RefStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/RefStreams;->iterate(Ljava/lang/Object;Ljava8/util/function/UnaryOperator;)Ljava8/util/stream/Stream;
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
.field prev:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field started:Z

.field final synthetic val$f:Ljava8/util/function/UnaryOperator;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(JILjava8/util/function/UnaryOperator;Ljava/lang/Object;)V
    .locals 0

    .line 289
    iput-object p4, p0, Ljava8/util/stream/RefStreams$1;->val$f:Ljava8/util/function/UnaryOperator;

    iput-object p5, p0, Ljava8/util/stream/RefStreams$1;->val$seed:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 295
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-boolean v0, p0, Ljava8/util/stream/RefStreams$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Ljava8/util/stream/RefStreams$1;->val$f:Ljava8/util/function/UnaryOperator;

    iget-object v2, p0, Ljava8/util/stream/RefStreams$1;->prev:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava8/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/RefStreams$1;->val$seed:Ljava/lang/Object;

    .line 301
    iput-boolean v1, p0, Ljava8/util/stream/RefStreams$1;->started:Z

    .line 303
    :goto_0
    iput-object v0, p0, Ljava8/util/stream/RefStreams$1;->prev:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v1
.end method
