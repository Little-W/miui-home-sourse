.class final synthetic Ljava8/util/stream/Collectors$$Lambda$73;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/Function;

.field private final arg$2:Ljava8/util/function/Function;

.field private final arg$3:Ljava8/util/function/BinaryOperator;


# direct methods
.method private constructor <init>(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$73;->arg$1:Ljava8/util/function/Function;

    iput-object p2, p0, Ljava8/util/stream/Collectors$$Lambda$73;->arg$2:Ljava8/util/function/Function;

    iput-object p3, p0, Ljava8/util/stream/Collectors$$Lambda$73;->arg$3:Ljava8/util/function/BinaryOperator;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$73;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/Collectors$$Lambda$73;-><init>(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$73;->arg$1:Ljava8/util/function/Function;

    iget-object v1, p0, Ljava8/util/stream/Collectors$$Lambda$73;->arg$2:Ljava8/util/function/Function;

    iget-object v2, p0, Ljava8/util/stream/Collectors$$Lambda$73;->arg$3:Ljava8/util/function/BinaryOperator;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, v1, v2, p1, p2}, Ljava8/util/stream/Collectors;->lambda$toMap$119(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava8/util/function/BinaryOperator;Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method
