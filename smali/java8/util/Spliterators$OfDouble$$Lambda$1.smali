.class final synthetic Ljava8/util/Spliterators$OfDouble$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/DoubleConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/Consumer;


# direct methods
.method private constructor <init>(Ljava8/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Spliterators$OfDouble$$Lambda$1;->arg$1:Ljava8/util/function/Consumer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Consumer;)Ljava8/util/function/DoubleConsumer;
    .locals 1

    new-instance v0, Ljava8/util/Spliterators$OfDouble$$Lambda$1;

    invoke-direct {v0, p0}, Ljava8/util/Spliterators$OfDouble$$Lambda$1;-><init>(Ljava8/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    iget-object v0, p0, Ljava8/util/Spliterators$OfDouble$$Lambda$1;->arg$1:Ljava8/util/function/Consumer;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
