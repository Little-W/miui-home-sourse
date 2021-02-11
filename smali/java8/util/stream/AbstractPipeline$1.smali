.class Ljava8/util/stream/AbstractPipeline$1;
.super Ljava/lang/Object;
.source "AbstractPipeline.java"

# interfaces
.implements Ljava8/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/AbstractPipeline;->wrapSink(Ljava8/util/function/Consumer;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Sink<",
        "TE_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/AbstractPipeline;

.field final synthetic val$sink:Ljava8/util/function/Consumer;


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/Consumer;)V
    .locals 0

    .line 534
    iput-object p1, p0, Ljava8/util/stream/AbstractPipeline$1;->this$0:Ljava8/util/stream/AbstractPipeline;

    iput-object p2, p0, Ljava8/util/stream/AbstractPipeline$1;->val$sink:Ljava8/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 559
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 551
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 555
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE_OUT;)V"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline$1;->val$sink:Ljava8/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public end()V
    .locals 0

    return-void
.end method
