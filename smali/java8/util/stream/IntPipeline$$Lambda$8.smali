.class final synthetic Ljava8/util/stream/IntPipeline$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/ObjIntConsumer;


# static fields
.field private static final instance:Ljava8/util/stream/IntPipeline$$Lambda$8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/IntPipeline$$Lambda$8;

    invoke-direct {v0}, Ljava8/util/stream/IntPipeline$$Lambda$8;-><init>()V

    sput-object v0, Ljava8/util/stream/IntPipeline$$Lambda$8;->instance:Ljava8/util/stream/IntPipeline$$Lambda$8;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/ObjIntConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/IntPipeline$$Lambda$8;->instance:Ljava8/util/stream/IntPipeline$$Lambda$8;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [J

    invoke-static {p1, p2}, Ljava8/util/stream/IntPipeline;->lambda$average$21([JI)V

    return-void
.end method
