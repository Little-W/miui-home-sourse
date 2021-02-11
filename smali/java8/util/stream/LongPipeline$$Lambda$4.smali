.class final synthetic Ljava8/util/stream/LongPipeline$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/LongBinaryOperator;


# static fields
.field private static final instance:Ljava8/util/stream/LongPipeline$$Lambda$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/LongPipeline$$Lambda$4;

    invoke-direct {v0}, Ljava8/util/stream/LongPipeline$$Lambda$4;-><init>()V

    sput-object v0, Ljava8/util/stream/LongPipeline$$Lambda$4;->instance:Ljava8/util/stream/LongPipeline$$Lambda$4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/LongBinaryOperator;
    .locals 1

    sget-object v0, Ljava8/util/stream/LongPipeline$$Lambda$4;->instance:Ljava8/util/stream/LongPipeline$$Lambda$4;

    return-object v0
.end method


# virtual methods
.method public applyAsLong(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ljava8/lang/Longs;->sum(JJ)J

    move-result-wide p1

    return-wide p1
.end method
