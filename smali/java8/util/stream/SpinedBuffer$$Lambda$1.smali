.class final synthetic Ljava8/util/stream/SpinedBuffer$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final arg$1:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer$$Lambda$1;->arg$1:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/List;)Ljava8/util/function/Consumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/SpinedBuffer$$Lambda$1;

    invoke-direct {v0, p0}, Ljava8/util/stream/SpinedBuffer$$Lambda$1;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$$Lambda$1;->arg$1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
