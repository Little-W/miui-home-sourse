.class final synthetic Ljava8/util/stream/Collectors$$Lambda$51;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BinaryOperator;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$51;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$51;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$51;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$51;->instance:Ljava8/util/stream/Collectors$$Lambda$51;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/BinaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$51;->instance:Ljava8/util/stream/Collectors$$Lambda$51;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [D

    check-cast p2, [D

    invoke-static {p1, p2}, Ljava8/util/stream/Collectors;->lambda$averagingDouble$93([D[D)[D

    move-result-object p1

    return-object p1
.end method
