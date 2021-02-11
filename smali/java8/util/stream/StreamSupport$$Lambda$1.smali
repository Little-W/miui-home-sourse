.class final synthetic Ljava8/util/stream/StreamSupport$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava8/util/stream/BaseStream;


# direct methods
.method private constructor <init>(Ljava8/util/stream/BaseStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/StreamSupport$$Lambda$1;->arg$1:Ljava8/util/stream/BaseStream;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Ljava8/util/stream/StreamSupport$$Lambda$1;

    invoke-direct {v0, p0}, Ljava8/util/stream/StreamSupport$$Lambda$1;-><init>(Ljava8/util/stream/BaseStream;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/StreamSupport$$Lambda$1;->arg$1:Ljava8/util/stream/BaseStream;

    invoke-interface {v0}, Ljava8/util/stream/BaseStream;->close()V

    return-void
.end method
