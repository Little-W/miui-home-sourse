.class final synthetic Ljava8/util/stream/Collectors$$Lambda$55;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$55;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$55;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$55;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$55;->instance:Ljava8/util/stream/Collectors$$Lambda$55;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Function;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$55;->instance:Ljava8/util/stream/Collectors$$Lambda$55;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava8/util/stream/Collectors;->lambda$reducing$97([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
