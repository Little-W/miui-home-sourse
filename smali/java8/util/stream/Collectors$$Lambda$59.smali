.class final synthetic Ljava8/util/stream/Collectors$$Lambda$59;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BinaryOperator;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$59;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$59;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$59;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$59;->instance:Ljava8/util/stream/Collectors$$Lambda$59;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/BinaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$59;->instance:Ljava8/util/stream/Collectors$$Lambda$59;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava8/util/stream/Collectors$1OptionalBox;

    check-cast p2, Ljava8/util/stream/Collectors$1OptionalBox;

    invoke-static {p1, p2}, Ljava8/util/stream/Collectors;->lambda$reducing$100(Ljava8/util/stream/Collectors$1OptionalBox;Ljava8/util/stream/Collectors$1OptionalBox;)Ljava8/util/stream/Collectors$1OptionalBox;

    move-result-object p1

    return-object p1
.end method
