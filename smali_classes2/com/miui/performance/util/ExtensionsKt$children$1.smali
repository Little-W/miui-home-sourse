.class final Lcom/miui/performance/util/ExtensionsKt$children$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Extensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/util/ExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Landroid/view/View;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.performance.util.ExtensionsKt$children$1"
    f = "Extensions.kt"
    l = {
        0xe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_children:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlin/sequences/SequenceScope;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/performance/util/ExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/performance/util/ExtensionsKt$children$1;

    iget-object v1, p0, Lcom/miui/performance/util/ExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p2}, Lcom/miui/performance/util/ExtensionsKt$children$1;-><init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/sequences/SequenceScope;

    iput-object p1, v0, Lcom/miui/performance/util/ExtensionsKt$children$1;->p$:Lkotlin/sequences/SequenceScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miui/performance/util/ExtensionsKt$children$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/miui/performance/util/ExtensionsKt$children$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/miui/performance/util/ExtensionsKt$children$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 13
    iget v1, p0, Lcom/miui/performance/util/ExtensionsKt$children$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :pswitch_0
    iget v1, p0, Lcom/miui/performance/util/ExtensionsKt$children$1;->I$1:I

    iget v3, p0, Lcom/miui/performance/util/ExtensionsKt$children$1;->I$0:I

    iget-object v4, p0, Lcom/miui/performance/util/ExtensionsKt$children$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/performance/util/ExtensionsKt$children$1;->p$:Lkotlin/sequences/SequenceScope;

    const/4 v1, 0x0

    .line 14
    iget-object v3, p0, Lcom/miui/performance/util/ExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move-object v4, p1

    move-object p1, p0

    move v6, v3

    move v3, v1

    move v1, v6

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v5, p1, Lcom/miui/performance/util/ExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v4, p1, Lcom/miui/performance/util/ExtensionsKt$children$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lcom/miui/performance/util/ExtensionsKt$children$1;->I$0:I

    iput v1, p1, Lcom/miui/performance/util/ExtensionsKt$children$1;->I$1:I

    iput v2, p1, Lcom/miui/performance/util/ExtensionsKt$children$1;->label:I

    invoke-virtual {v4, v5, p1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_0

    return-object v0

    :cond_0
    :goto_1
    add-int/2addr v3, v2

    goto :goto_0

    .line 15
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
