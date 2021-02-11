.class final synthetic Ljava8/util/stream/IntPipeline$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# static fields
.field private static final instance:Ljava8/util/stream/IntPipeline$$Lambda$9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/IntPipeline$$Lambda$9;

    invoke-direct {v0}, Ljava8/util/stream/IntPipeline$$Lambda$9;-><init>()V

    sput-object v0, Ljava8/util/stream/IntPipeline$$Lambda$9;->instance:Ljava8/util/stream/IntPipeline$$Lambda$9;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/BiConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/IntPipeline$$Lambda$9;->instance:Ljava8/util/stream/IntPipeline$$Lambda$9;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [J

    check-cast p2, [J

    invoke-static {p1, p2}, Ljava8/util/stream/IntPipeline;->lambda$average$22([J[J)V

    return-void
.end method
