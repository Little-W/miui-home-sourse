.class final synthetic Ljava8/util/stream/FindOps$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Predicate;


# static fields
.field private static final instance:Ljava8/util/stream/FindOps$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/FindOps$$Lambda$3;

    invoke-direct {v0}, Ljava8/util/stream/FindOps$$Lambda$3;-><init>()V

    sput-object v0, Ljava8/util/stream/FindOps$$Lambda$3;->instance:Ljava8/util/stream/FindOps$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Predicate;
    .locals 1

    sget-object v0, Ljava8/util/stream/FindOps$$Lambda$3;->instance:Ljava8/util/stream/FindOps$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava8/util/OptionalLong;

    invoke-virtual {p1}, Ljava8/util/OptionalLong;->isPresent()Z

    move-result p1

    return p1
.end method
