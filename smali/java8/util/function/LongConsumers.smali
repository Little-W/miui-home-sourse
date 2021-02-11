.class public final Ljava8/util/function/LongConsumers;
.super Ljava/lang/Object;
.source "LongConsumers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Ljava8/util/function/LongConsumer;Ljava8/util/function/LongConsumer;)Ljava8/util/function/LongConsumer;
    .locals 0

    .line 50
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p0, p1}, Ljava8/util/function/LongConsumers$$Lambda$1;->lambdaFactory$(Ljava8/util/function/LongConsumer;Ljava8/util/function/LongConsumer;)Ljava8/util/function/LongConsumer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$andThen$134(Ljava8/util/function/LongConsumer;Ljava8/util/function/LongConsumer;J)V
    .locals 0

    .line 52
    invoke-interface {p0, p2, p3}, Ljava8/util/function/LongConsumer;->accept(J)V

    invoke-interface {p1, p2, p3}, Ljava8/util/function/LongConsumer;->accept(J)V

    return-void
.end method
