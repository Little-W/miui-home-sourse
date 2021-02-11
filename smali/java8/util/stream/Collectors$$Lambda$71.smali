.class final synthetic Ljava8/util/stream/Collectors$$Lambda$71;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final arg$1:Ljava8/util/stream/Collector;


# direct methods
.method private constructor <init>(Ljava8/util/stream/Collector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$71;->arg$1:Ljava8/util/stream/Collector;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/stream/Collector;)Ljava8/util/function/Supplier;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$71;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$71;-><init>(Ljava8/util/stream/Collector;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$71;->arg$1:Ljava8/util/stream/Collector;

    invoke-static {v0}, Ljava8/util/stream/Collectors;->lambda$partitioningBy$117(Ljava8/util/stream/Collector;)Ljava8/util/stream/Collectors$Partition;

    move-result-object v0

    return-object v0
.end method
