.class final synthetic Ljava8/util/stream/Collectors$$Lambda$48;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$48;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$48;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$48;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$48;->instance:Ljava8/util/stream/Collectors$$Lambda$48;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Function;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$48;->instance:Ljava8/util/stream/Collectors$$Lambda$48;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [J

    invoke-static {p1}, Ljava8/util/stream/Collectors;->lambda$averagingLong$90([J)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
