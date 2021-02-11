.class final synthetic Ljava8/util/stream/Collectors$$Lambda$57;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final arg$1:Ljava8/util/function/BinaryOperator;


# direct methods
.method private constructor <init>(Ljava8/util/function/BinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$57;->arg$1:Ljava8/util/function/BinaryOperator;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/BinaryOperator;)Ljava8/util/function/Supplier;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$57;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$57;-><init>(Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$57;->arg$1:Ljava8/util/function/BinaryOperator;

    invoke-static {v0}, Ljava8/util/stream/Collectors;->lambda$reducing$99(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/Collectors$1OptionalBox;

    move-result-object v0

    return-object v0
.end method
