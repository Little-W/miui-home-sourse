.class final Lkotlinx/coroutines/SelectAwaitOnCompletion;
.super Lkotlinx/coroutines/JobNode;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/JobNode<",
        "Lkotlinx/coroutines/JobSupport;",
        ">;"
    }
.end annotation


# instance fields
.field private final block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final select:Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobSupport;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1441
    check-cast p1, Lkotlinx/coroutines/Job;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobNode;-><init>(Lkotlinx/coroutines/Job;)V

    iput-object p2, p0, Lkotlinx/coroutines/SelectAwaitOnCompletion;->select:Lkotlinx/coroutines/selects/SelectInstance;

    iput-object p3, p0, Lkotlinx/coroutines/SelectAwaitOnCompletion;->block:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1437
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/SelectAwaitOnCompletion;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 1443
    iget-object p1, p0, Lkotlinx/coroutines/SelectAwaitOnCompletion;->select:Lkotlinx/coroutines/selects/SelectInstance;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1444
    iget-object p1, p0, Lkotlinx/coroutines/SelectAwaitOnCompletion;->job:Lkotlinx/coroutines/Job;

    check-cast p1, Lkotlinx/coroutines/JobSupport;

    iget-object v0, p0, Lkotlinx/coroutines/SelectAwaitOnCompletion;->select:Lkotlinx/coroutines/selects/SelectInstance;

    iget-object v1, p0, Lkotlinx/coroutines/SelectAwaitOnCompletion;->block:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/JobSupport;->selectAwaitCompletion$kotlinx_coroutines_core(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectAwaitOnCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/SelectAwaitOnCompletion;->select:Lkotlinx/coroutines/selects/SelectInstance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
