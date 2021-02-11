.class final synthetic Ljava8/util/stream/Collectors$$Lambda$53;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/BinaryOperator;


# direct methods
.method private constructor <init>(Ljava8/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$53;->arg$1:Ljava8/util/function/BinaryOperator;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$53;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$53;-><init>(Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$53;->arg$1:Ljava8/util/function/BinaryOperator;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Ljava8/util/stream/Collectors;->lambda$reducing$95(Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
