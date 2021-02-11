.class final synthetic Ljava8/util/stream/Collectors$$Lambda$90;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$90;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$90;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$90;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$90;->instance:Ljava8/util/stream/Collectors$$Lambda$90;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Function;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$90;->instance:Ljava8/util/stream/Collectors$$Lambda$90;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava8/util/stream/Collectors;->lambda$static$51(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
