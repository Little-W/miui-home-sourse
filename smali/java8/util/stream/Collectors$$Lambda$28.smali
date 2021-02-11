.class final synthetic Ljava8/util/stream/Collectors$$Lambda$28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/ToLongFunction;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$28;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$28;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$28;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$28;->instance:Ljava8/util/stream/Collectors$$Lambda$28;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/ToLongFunction;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$28;->instance:Ljava8/util/stream/Collectors$$Lambda$28;

    return-object v0
.end method


# virtual methods
.method public applyAsLong(Ljava/lang/Object;)J
    .locals 2

    invoke-static {p1}, Ljava8/util/stream/Collectors;->lambda$counting$70(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method
