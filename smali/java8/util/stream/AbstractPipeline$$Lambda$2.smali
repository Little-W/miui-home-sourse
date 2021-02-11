.class final synthetic Ljava8/util/stream/AbstractPipeline$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final arg$1:Ljava8/util/Spliterator;


# direct methods
.method private constructor <init>(Ljava8/util/Spliterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/AbstractPipeline$$Lambda$2;->arg$1:Ljava8/util/Spliterator;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/Spliterator;)Ljava8/util/function/Supplier;
    .locals 1

    new-instance v0, Ljava8/util/stream/AbstractPipeline$$Lambda$2;

    invoke-direct {v0, p0}, Ljava8/util/stream/AbstractPipeline$$Lambda$2;-><init>(Ljava8/util/Spliterator;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline$$Lambda$2;->arg$1:Ljava8/util/Spliterator;

    invoke-static {v0}, Ljava8/util/stream/AbstractPipeline;->lambda$wrapSpliterator$1(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
