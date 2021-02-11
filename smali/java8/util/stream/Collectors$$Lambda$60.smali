.class final synthetic Ljava8/util/stream/Collectors$$Lambda$60;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$60;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$60;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$60;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$60;->instance:Ljava8/util/stream/Collectors$$Lambda$60;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Function;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$60;->instance:Ljava8/util/stream/Collectors$$Lambda$60;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava8/util/stream/Collectors$1OptionalBox;

    invoke-static {p1}, Ljava8/util/stream/Collectors;->lambda$reducing$101(Ljava8/util/stream/Collectors$1OptionalBox;)Ljava8/util/Optional;

    move-result-object p1

    return-object p1
.end method
