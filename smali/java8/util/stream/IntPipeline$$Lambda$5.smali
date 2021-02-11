.class final synthetic Ljava8/util/stream/IntPipeline$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/IntBinaryOperator;


# static fields
.field private static final instance:Ljava8/util/stream/IntPipeline$$Lambda$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/IntPipeline$$Lambda$5;

    invoke-direct {v0}, Ljava8/util/stream/IntPipeline$$Lambda$5;-><init>()V

    sput-object v0, Ljava8/util/stream/IntPipeline$$Lambda$5;->instance:Ljava8/util/stream/IntPipeline$$Lambda$5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/IntBinaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/stream/IntPipeline$$Lambda$5;->instance:Ljava8/util/stream/IntPipeline$$Lambda$5;

    return-object v0
.end method


# virtual methods
.method public applyAsInt(II)I
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
