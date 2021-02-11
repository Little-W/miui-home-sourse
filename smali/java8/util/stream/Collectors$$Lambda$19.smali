.class final synthetic Ljava8/util/stream/Collectors$$Lambda$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final arg$1:Ljava/lang/CharSequence;

.field private final arg$2:Ljava/lang/CharSequence;

.field private final arg$3:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$19;->arg$1:Ljava/lang/CharSequence;

    iput-object p2, p0, Ljava8/util/stream/Collectors$$Lambda$19;->arg$2:Ljava/lang/CharSequence;

    iput-object p3, p0, Ljava8/util/stream/Collectors$$Lambda$19;->arg$3:Ljava/lang/CharSequence;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava8/util/function/Supplier;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$19;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/Collectors$$Lambda$19;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$19;->arg$1:Ljava/lang/CharSequence;

    iget-object v1, p0, Ljava8/util/stream/Collectors$$Lambda$19;->arg$2:Ljava/lang/CharSequence;

    iget-object v2, p0, Ljava8/util/stream/Collectors$$Lambda$19;->arg$3:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Ljava8/util/stream/Collectors;->lambda$joining$63(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava8/util/StringJoiner;

    move-result-object v0

    return-object v0
.end method
