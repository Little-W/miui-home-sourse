.class final synthetic Ljava8/util/function/Functions$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Function;


# instance fields
.field private final arg$1:Ljava8/util/function/Function;

.field private final arg$2:Ljava8/util/function/Function;


# direct methods
.method private constructor <init>(Ljava8/util/function/Function;Ljava8/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/Functions$$Lambda$2;->arg$1:Ljava8/util/function/Function;

    iput-object p2, p0, Ljava8/util/function/Functions$$Lambda$2;->arg$2:Ljava8/util/function/Function;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/Function;)Ljava8/util/function/Function;
    .locals 1

    new-instance v0, Ljava8/util/function/Functions$$Lambda$2;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/Functions$$Lambda$2;-><init>(Ljava8/util/function/Function;Ljava8/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava8/util/function/Functions$$Lambda$2;->arg$1:Ljava8/util/function/Function;

    iget-object v1, p0, Ljava8/util/function/Functions$$Lambda$2;->arg$2:Ljava8/util/function/Function;

    invoke-static {v0, v1, p1}, Ljava8/util/function/Functions;->lambda$andThen$157(Ljava8/util/function/Function;Ljava8/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
