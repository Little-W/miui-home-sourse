.class final Lkotlinx/coroutines/internal/ThreadState;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/Object;

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private i:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/ThreadState;->context:Lkotlin/coroutines/CoroutineContext;

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/ThreadState;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadState;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/ThreadState;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/ThreadState;->i:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/ThreadState;->context:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/internal/ThreadState;->i:I

    return-void
.end method

.method public final take()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadState;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/ThreadState;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/ThreadState;->i:I

    aget-object p0, v0, v1

    return-object p0
.end method
