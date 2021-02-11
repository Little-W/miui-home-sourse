.class final synthetic Ljava8/util/stream/IntPipeline$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/ToIntFunction;


# static fields
.field private static final instance:Ljava8/util/stream/IntPipeline$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/IntPipeline$$Lambda$3;

    invoke-direct {v0}, Ljava8/util/stream/IntPipeline$$Lambda$3;-><init>()V

    sput-object v0, Ljava8/util/stream/IntPipeline$$Lambda$3;->instance:Ljava8/util/stream/IntPipeline$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/ToIntFunction;
    .locals 1

    sget-object v0, Ljava8/util/stream/IntPipeline$$Lambda$3;->instance:Ljava8/util/stream/IntPipeline$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava8/util/stream/IntPipeline;->lambda$distinct$19(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
