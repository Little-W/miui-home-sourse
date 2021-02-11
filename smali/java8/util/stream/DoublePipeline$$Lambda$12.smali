.class final synthetic Ljava8/util/stream/DoublePipeline$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/ObjDoubleConsumer;


# static fields
.field private static final instance:Ljava8/util/stream/DoublePipeline$$Lambda$12;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/DoublePipeline$$Lambda$12;

    invoke-direct {v0}, Ljava8/util/stream/DoublePipeline$$Lambda$12;-><init>()V

    sput-object v0, Ljava8/util/stream/DoublePipeline$$Lambda$12;->instance:Ljava8/util/stream/DoublePipeline$$Lambda$12;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/ObjDoubleConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/DoublePipeline$$Lambda$12;->instance:Ljava8/util/stream/DoublePipeline$$Lambda$12;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;D)V
    .locals 0

    check-cast p1, Ljava8/util/DoubleSummaryStatistics;

    invoke-virtual {p1, p2, p3}, Ljava8/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method
