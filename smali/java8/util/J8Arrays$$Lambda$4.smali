.class final synthetic Ljava8/util/J8Arrays$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/IntConsumer;


# instance fields
.field private final arg$1:[D

.field private final arg$2:Ljava8/util/function/IntToDoubleFunction;


# direct methods
.method private constructor <init>([DLjava8/util/function/IntToDoubleFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/J8Arrays$$Lambda$4;->arg$1:[D

    iput-object p2, p0, Ljava8/util/J8Arrays$$Lambda$4;->arg$2:Ljava8/util/function/IntToDoubleFunction;

    return-void
.end method

.method public static lambdaFactory$([DLjava8/util/function/IntToDoubleFunction;)Ljava8/util/function/IntConsumer;
    .locals 1

    new-instance v0, Ljava8/util/J8Arrays$$Lambda$4;

    invoke-direct {v0, p0, p1}, Ljava8/util/J8Arrays$$Lambda$4;-><init>([DLjava8/util/function/IntToDoubleFunction;)V

    return-object v0
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object v0, p0, Ljava8/util/J8Arrays$$Lambda$4;->arg$1:[D

    iget-object v1, p0, Ljava8/util/J8Arrays$$Lambda$4;->arg$2:Ljava8/util/function/IntToDoubleFunction;

    invoke-static {v0, v1, p1}, Ljava8/util/J8Arrays;->lambda$parallelSetAll$130([DLjava8/util/function/IntToDoubleFunction;I)V

    return-void
.end method
