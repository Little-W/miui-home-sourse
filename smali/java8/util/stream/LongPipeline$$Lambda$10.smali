.class final synthetic Ljava8/util/stream/LongPipeline$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/ObjLongConsumer;


# static fields
.field private static final instance:Ljava8/util/stream/LongPipeline$$Lambda$10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/LongPipeline$$Lambda$10;

    invoke-direct {v0}, Ljava8/util/stream/LongPipeline$$Lambda$10;-><init>()V

    sput-object v0, Ljava8/util/stream/LongPipeline$$Lambda$10;->instance:Ljava8/util/stream/LongPipeline$$Lambda$10;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/ObjLongConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/LongPipeline$$Lambda$10;->instance:Ljava8/util/stream/LongPipeline$$Lambda$10;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;J)V
    .locals 0

    check-cast p1, Ljava8/util/LongSummaryStatistics;

    invoke-virtual {p1, p2, p3}, Ljava8/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method
