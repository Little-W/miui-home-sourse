.class final synthetic Ljava8/util/stream/Collectors$$Lambda$88;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$88;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$88;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$88;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$88;->instance:Ljava8/util/stream/Collectors$$Lambda$88;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Supplier;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$88;->instance:Ljava8/util/stream/Collectors$$Lambda$88;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava8/util/IntSummaryStatistics;

    invoke-direct {v0}, Ljava8/util/IntSummaryStatistics;-><init>()V

    return-object v0
.end method
