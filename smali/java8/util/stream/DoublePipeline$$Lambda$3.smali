.class final synthetic Ljava8/util/stream/DoublePipeline$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/ToDoubleFunction;


# static fields
.field private static final instance:Ljava8/util/stream/DoublePipeline$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/DoublePipeline$$Lambda$3;

    invoke-direct {v0}, Ljava8/util/stream/DoublePipeline$$Lambda$3;-><init>()V

    sput-object v0, Ljava8/util/stream/DoublePipeline$$Lambda$3;->instance:Ljava8/util/stream/DoublePipeline$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/ToDoubleFunction;
    .locals 1

    sget-object v0, Ljava8/util/stream/DoublePipeline$$Lambda$3;->instance:Ljava8/util/stream/DoublePipeline$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Ljava/lang/Double;

    invoke-static {p1}, Ljava8/util/stream/DoublePipeline;->lambda$distinct$4(Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method
