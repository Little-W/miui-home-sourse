.class final synthetic Ljava8/util/stream/Collectors$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$7;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$7;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$7;->instance:Ljava8/util/stream/Collectors$$Lambda$7;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/BiConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$7;->instance:Ljava8/util/stream/Collectors$$Lambda$7;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
