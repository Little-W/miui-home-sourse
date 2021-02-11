.class final synthetic Ljava8/util/stream/DoublePipeline$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/DoubleBinaryOperator;


# static fields
.field private static final instance:Ljava8/util/stream/DoublePipeline$$Lambda$8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/DoublePipeline$$Lambda$8;

    invoke-direct {v0}, Ljava8/util/stream/DoublePipeline$$Lambda$8;-><init>()V

    sput-object v0, Ljava8/util/stream/DoublePipeline$$Lambda$8;->instance:Ljava8/util/stream/DoublePipeline$$Lambda$8;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/DoubleBinaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/stream/DoublePipeline$$Lambda$8;->instance:Ljava8/util/stream/DoublePipeline$$Lambda$8;

    return-object v0
.end method


# virtual methods
.method public applyAsDouble(DD)D
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    return-wide p1
.end method
